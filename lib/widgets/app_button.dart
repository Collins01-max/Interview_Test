import 'package:flutter/material.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  const AppButton({Key? key, this.title, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(
          Radius.circular(12),
        )),
        height: getProportionatefontSize(46),
        width: SizeConfig.orientation==Orientation.portrait? getProportionatefontSize(343):SizeConfig.screenWidth!*0.80,
        child: AppText(
          fontSize: getProportionatefontSize(14),
          fontWeight: FontWeight.w700,
          content: title ?? "",
          color: Colors.white,
        ),
      ),
    );
  }
}

