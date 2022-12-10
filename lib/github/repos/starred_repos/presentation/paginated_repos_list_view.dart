import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/starred_repos/application/starred_repos_notifier.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/failure_repo_tile.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/loading_repo_tile.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/repo_tile.dart';

class PaginatedReposListView extends StatefulWidget {
  const PaginatedReposListView({
    Key? key,
  }) : super(key: key);

  @override
  State<PaginatedReposListView> createState() => _PaginatedReposListViewState();
}

class _PaginatedReposListViewState extends State<PaginatedReposListView> {
  var canLoadNextPage = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.listen<StarredReposState>(
          starredReposNotifierProvider,
          (_, state) {
            state.map(
                initial: (_) => canLoadNextPage = true,
                loadingInProgress: (_) => canLoadNextPage = false,
                loadSuccess: (_) => canLoadNextPage = _.isNextPageAvailable,
                loadFailure: (_) => canLoadNextPage = false);
          },
        );
        final state = ref.watch(starredReposNotifierProvider);
        return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              final metrics = notification.metrics;
              final limit =
                  metrics.maxScrollExtent - metrics.viewportDimension / 3;

              if (canLoadNextPage && metrics.pixels >= limit) {
                canLoadNextPage = false;
                ref
                    .read(starredReposNotifierProvider.notifier)
                    .getNextStarredReposPage();
              }
              return false;
            },
            child: _PaginatedListView(state: state));
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final StarredReposState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.map(
          initial: (_) => 0,
          loadingInProgress: (_) => _.repos.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.repos.entity.length,
          loadFailure: (_) => _.repos.entity.length + 1),
      itemBuilder: (context, index) {
        return state.map(
          initial: (_) => const SizedBox(),
          loadingInProgress: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(
                repo: _.repos.entity[index],
              );
            }
            return const LoadingRepoTile();
          },
          loadSuccess: (_) => RepoTile(
            repo: _.repos.entity[index],
          ),
          loadFailure: (_) {
            if (index < _.repos.entity.length) {
              return RepoTile(
                repo: _.repos.entity[index],
              );
            }
            return FailureRepoTile(
              failure: _.failure,
            );
          },
        );
      },
    );
  }
}
