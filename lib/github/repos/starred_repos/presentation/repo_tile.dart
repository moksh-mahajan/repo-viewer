import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:repo_viewer/github/core/domain/github_repo.dart';

class RepoTile extends StatelessWidget {
  final GithubRepo repo;

  const RepoTile({
    super.key,
    required this.repo,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        backgroundImage: CachedNetworkImageProvider(repo.owner.avatarUrlSmall),
      ),
      title: Text(repo.fullName),
      subtitle: Text(
        repo.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(Icons.star_border),
        Text(repo.stargazersCount.toString())
      ]),
    );
  }
}
