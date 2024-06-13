import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xpensea/src/core/theme/palette.dart';
import 'package:xpensea/src/core/theme/text_style.dart';
import 'package:xpensea/src/presentation/components/icons/app_icons.dart';

class Activity {
  final String title;
  final String amount;
  final String expenses;
  final String date;
  final String status;
  final Color statusColor;
  final Color statusTextColor;

  Activity({
    required this.title,
    required this.amount,
    required this.expenses,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.statusTextColor,
  });
}

class ActivityCard extends StatelessWidget {
  final Activity activity;
  const ActivityCard({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppPalette.kOrange,
                borderRadius: BorderRadius.circular(12)),
            child: SvgPicture.asset(AppIcons.eventOrange),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.title,
                  style: AppTextStyle.kMediumBodyM,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      activity.amount,
                      style: AppTextStyle.kLargeBodySB,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      activity.expenses,
                      style: AppTextStyle.kSmallBodyR,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.symmetric(vertical: 4),
            decoration: BoxDecoration(
                color: activity.statusColor,
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              activity.status,
              style: AppTextStyle.kSmallBodyR.copyWith(
                color: activity.statusTextColor,
              ),
            )),
          )
        ],
      ),
    );
  }
}
