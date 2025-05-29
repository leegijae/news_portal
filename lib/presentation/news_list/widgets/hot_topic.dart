import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_portal/app/translations/app_trans.dart';

class HotTopic extends StatelessWidget {
  const HotTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AppTrans.newsList.hotTopic.tr(),
          style: GoogleFonts.jua(
            fontSize: 40, // ✅ 오타 수정
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
