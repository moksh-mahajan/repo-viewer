import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/starred_repos/application/starred_repos_notifier.dart';
import 'package:repo_viewer/github/repos/starred_repos/presentation/repo_tile.dart';

class PaginatedReposListView extends ConsumerWidget {
  const PaginatedReposListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final state = ref.watch(starredReposNotifierProvider);
    return ListView.builder(
      itemCount: state.map(
          initial: (_) => 0,
          loadingInProgress: (_) => _.repos.entity.length + _.itemsPerPage,
          loadSuccess: (_) => _.repos.entity.length,
          loadFailure: (_) => _.repos.entity.length + 1),
      itemBuilder: (context, index) {
        return state.map(
          initial: (_) => const FlutterLogo(),
          loadingInProgress: (_) => const FlutterLogo(),
          loadSuccess: (_) => RepoTile(
            repo: _.repos.entity[index],
          ),
          loadFailure: (_) => Text(_.failure.errorCode.toString()),
        );
      },
    );
  }
}
