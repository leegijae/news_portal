import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:news_portal/presentation/news_list/widgets/app_bar.dart';
import 'package:news_portal/presentation/news_list/widgets/hot_topic.dart';
import 'package:news_portal/presentation/widgets/app_scaffold.dart';
import 'package:news_portal/presentation/widgets/app_logo.dart';

class NewsListScreen extends StatelessWidget {
  const NewsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        title: const Text('News Portal'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: HotTopic(),
        ),
      ),
      child: Center(child: Text('News content goes here')),
    );
  }
}
