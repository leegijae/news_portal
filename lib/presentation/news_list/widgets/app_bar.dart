import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:news_portal/presentation/widgets/app_logo.dart';

class NewsListAppBar extends StatelessWidget {
  const NewsListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: AppLogo(), //
      actions: [
        IconButton(
          onPressed: () {}, //
          icon: Icon(LucideIcons.search),
        ),
        IconButton(
          onPressed: () {}, //
          icon: Icon(LucideIcons.menu),
        ),
      ],
    );
  }
}
