import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:xpensea/src/core/theme/text_style.dart';
import 'package:xpensea/src/presentation/components/cards/setting_card.dart';
import 'package:xpensea/src/presentation/components/dialogs/report_problem_dialog.dart';
import 'package:xpensea/src/presentation/components/icons/app_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 28,
        ),
        Row(
          children: [
            const CircleAvatar(
              radius: 48,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Amal Davis T N',
                  style: AppTextStyle.kLargeBodyB,
                ),
                Text(
                  'Employee ID :78946548',
                  style:
                      AppTextStyle.kMediumBodyM.copyWith(color: Colors.black),
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        const Divider(),
        const SizedBox(
          height: 28,
        ),
        SettingCard(
          settingParams: SettingParams(
            leadingImagePath: AppIcons.lock,
            title: 'Change MPIN',
          ),
        ),
        SettingCard(
          settingParams: SettingParams(
            leadingImagePath: AppIcons.warning,
            title: 'Report a problem',
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => const ReportProblemDialog(),
              );
            },
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.logout),
            const SizedBox(
              width: 8,
            ),
            Text(
              'Logout',
              style: AppTextStyle.kLargeBodySB.copyWith(fontSize: 14),
            )
          ],
        ),
      ],
    );
  }
}
