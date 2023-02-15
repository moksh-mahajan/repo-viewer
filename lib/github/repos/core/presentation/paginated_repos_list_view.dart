import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/core/presentation/toasts.dart';
import 'package:repo_viewer/github/core/presentation/no_results_display.dart';
import 'package:repo_viewer/github/repos/core/application/paginated_repos_notifier.dart';
import 'package:repo_viewer/github/repos/core/presentation/failure_repo_tile.dart';
import 'package:repo_viewer/github/repos/core/presentation/loading_repo_tile.dart';
import 'package:repo_viewer/github/repos/core/presentation/repo_tile.dart';

class PaginatedReposListView extends StatefulWidget {
  final AutoDisposeStateNotifierProvider<PaginatedReposNotifier, PaginatedReposState>
      paginatedReposNotifierProvider;
  final void Function(WidgetRef ref) getNextPage;
  final String noResultsMessage;

  const PaginatedReposListView({
    Key? key,
    required this.paginatedReposNotifierProvider,
    required this.getNextPage,
    required this.noResultsMessage,
  }) : super(key: key);

  @override
  State<PaginatedReposListView> createState() => _PaginatedReposListViewState();
}

class _PaginatedReposListViewState extends State<PaginatedReposListView> {
  var canLoadNextPage = false;
  var hasAlreadyShownNoConnectionToast = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        ref.listen<PaginatedReposState>(
          widget.paginatedReposNotifierProvider,
          (_, state) {
            state.map(
                initial: (_) => canLoadNextPage = true,
                loadingInProgress: (_) => canLoadNextPage = false,
                loadSuccess: (_) {
                  if (!_.repos.isFresh && !hasAlreadyShownNoConnectionToast) {
                    hasAlreadyShownNoConnectionToast = true;
                    showNoConnectionToast(
                        "You're not online. Some information may be outdated.",
                        context);
                  }
                  canLoadNextPage = _.isNextPageAvailable;
                },
                loadFailure: (_) => canLoadNextPage = false);
          },
        );
        final state = ref.watch(widget.paginatedReposNotifierProvider);
        return NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              final metrics = notification.metrics;
              final limit =
                  metrics.maxScrollExtent - metrics.viewportDimension / 3;

              if (canLoadNextPage && metrics.pixels >= limit) {
                canLoadNextPage = false;
                widget.getNextPage(ref);
              }
              return false;
            },
            child: state.maybeWhen(
                    orElse: () => false,
                    loadSuccess: (repos, _) => repos.entity.isEmpty)
                ?  NoResultsDisplay(
                    message:
                        widget.noResultsMessage,
                  )
                : _PaginatedListView(state: state));
      },
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  const _PaginatedListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final PaginatedReposState state;

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
