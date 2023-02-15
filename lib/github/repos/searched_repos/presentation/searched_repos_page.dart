import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:repo_viewer/auth/shared/providers.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/core/presentation/paginated_repos_list_view.dart';

class SearchedReposPage extends ConsumerStatefulWidget {
  final String searchTerm;
  const SearchedReposPage({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _SearchedReposPageState();
  }
}

class _SearchedReposPageState extends ConsumerState<SearchedReposPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => ref
        .read(searchedReposNotifierProvider.notifier)
        .getNextSearchedReposPage(widget.searchTerm));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starred repos'),
        actions: [
          IconButton(
            onPressed: () => ref.read(authNotifierProvider.notifier).signOut(),
            icon: const Icon(MdiIcons.logoutVariant),
          )
        ],
      ),
      body: PaginatedReposListView(
        paginatedReposNotifierProvider: searchedReposNotifierProvider,
        getNextPage: (ref) => ref
            .read(searchedReposNotifierProvider.notifier)
            .getNextSearchedReposPage(widget.searchTerm),
        noResultsMessage:
            "This is all we could find for your search term. Really...",
      ),
    );
  }
}
