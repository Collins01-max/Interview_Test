import 'package:flutter/material.dart';
import 'package:interview_test/utils/app_colors.dart';
import 'package:interview_test/utils/size_config.dart';
import 'package:interview_test/views/authentications/components/auth_text_field.dart';
import 'package:interview_test/views/home/home_view.dart';
import 'package:interview_test/widgets/app_button.dart';
import 'package:interview_test/widgets/app_text.dart';
import 'package:interview_test/widgets/social_media_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppText(
              isCenter: false,
              content: 'Skip Here',
              fontWeight: FontWeight.w400,
              fontSize: getProportionatefontSize(16),
              color: AppColors.textColor,
            ),
          ),
          SizedBox(
            width: getProportionatefontSize(10),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColors.textColor,
            size: getProportionatefontSize(24),
          ),
        ),
      ),
      body: Container(
        margin: SizeConfig.appPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionatefontSize(15),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  isCenter: false,
                  content: "Sign up",
                  fontSize: getProportionatefontSize(34),
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
         
              SizedBox(
                height: getProportionatefontSize(16),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: AppText(
                  content: "Complete the required registration details",
                  fontSize: getProportionatefontSize(14),
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: getProportionatefontSize(36),
              ),
              buildCustomSteppers(context),
              SizedBox(
                height: getProportionatefontSize(41),
              ),
              Center(
                child: AuthTextField(
                  title: "First Name",
                ),
              ),
              SizedBox(
                height: getProportionatefontSize(8),
              ),
              Center(
                child: AuthTextField(
                  title: "Last Name",
                ),
              ),

              SizedBox(
                height: getProportionatefontSize(41),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDots(context, Colors.black),
                    buildDots(context, Color(0xffD8D8D8)),
                    buildDots(context, Color(0xffD8D8D8)),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionatefontSize(38),
              ),
              Center(
                child: AppButton(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomeView()));
                  },
                  title: "Continue",
                ),
              ),
              SizedBox(
                height: getProportionatefontSize(35),
              ),
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: getProportionatefontSize(1),
                        // width: getProportionatefontSize(100),
                        decoration: BoxDecoration(color: Color(0xff757575)),
                      ),
                    ),
                    SizedBox(
                      width: getProportionatefontSize(5),
                    ),
                    AppText(
                      content: 'Or Continue with',
                      fontWeight: FontWeight.w400,
                      fontSize: getProportionatefontSize(12),
                    ),
                    SizedBox(
                      width: getProportionatefontSize(5),
                    ),
                    Expanded(
                      child: Container(
                        height: getProportionatefontSize(1),
                        // width: getProportionatefontSize(100),
                        decoration: BoxDecoration(color: Color(0xff757575)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionatefontSize(35),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SocialMediaButton(
                    callback: () {},
                    content: 'Google',
                    hasBorder: false,
                    icon: 'assets/icons/google.svg',
                  ),
                  Spacer(),
                  SocialMediaButton(
                    buttonColor: Color(0xff1877F2),
                    textColor: Colors.white,
                    callback: () {},
                    content: 'Facebook',
                    hasBorder: true,
                    icon: 'assets/icons/facebook.svg',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomSteppers(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildCircle(context, '1'),
        Container(
          height: getProportionatefontSize(1),
          width: getProportionatefontSize(63),
          color: Color(0xff757575),
        ),
        buildCircle(context, '2'),
        Container(
          height: getProportionatefontSize(1),
          width: getProportionatefontSize(63),
          color: Color(0xff757575),
        ),
        buildCircle(context, '3'),
      ],
    );
  }

  Widget buildDots(context, Color color) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        height: getProportionatefontSize(4),
        width: getProportionatefontSize(16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
      ),
    );
  }

  Widget buildCircle(context, String value) {
    SizeConfig().init(context);

    return Container(
      alignment: Alignment.center,
      height: getProportionatefontSize(22.8),
      width: getProportionatefontSize(22.8),
      child: AppText(
        content: value,
        color: Color(0xff757575),
        fontSize: getProportionatefontSize(11),
        fontWeight: FontWeight.w400,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff757575),
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
