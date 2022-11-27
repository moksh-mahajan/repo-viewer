import 'package:flutter/material.dart' show runApp;
import 'package:hooks_riverpod/hooks_riverpod.dart' show ProviderScope;
import 'package:repo_viewer/core/presentation/app_widget.dart';

void main() {
  runApp(
    ProviderScope(
      child: AppWidget(),
    ),
  );
}
