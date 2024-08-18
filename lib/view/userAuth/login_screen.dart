import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:quiz_pro/res/core/constants/color_constants.dart';
import 'package:quiz_pro/res/core/helpers/asset_helper.dart';
import 'package:quiz_pro/utils/router_names.dart';

import 'widget/custom_rich_text_widget.dart';
import 'widget/dividerR_row_widget.dart';
import 'widget/password_text_field_widget.dart';
import 'widget/primary_button_widget.dart';
import 'widget/primary_text_button_widget.dart';
import 'widget/primary_text_form_field_widget.dart';
import 'widget/secondary_button_widget.dart';
import 'widget/terms_and_privacyText_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailC;
  late TextEditingController passwordC;

  @override
  void initState() {
    super.initState();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.kWhite,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: 327,
            child: Column(
              children: [
                Text(
                  'welcome_back'.tr(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ).copyWith(
                      color: ColorPalette.kGrayscaleDark100, fontSize: 20),
                ),
                const SizedBox(height: 8),
                Text(
                  'happy_to_see_you'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.kGrayscale40,
                  ),
                ),
                const SizedBox(height: 36),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.kGrayscaleDark100,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    PrimaryTextFormFieldWidget(
                      borderRadius: BorderRadius.circular(24),
                      hintText: 'abc@gmail.com',
                      controller: emailC,
                      width: 327,
                      height: 52,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'password'.tr(),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorPalette.kGrayscaleDark100,
                      ),
                    ),
                    const SizedBox(height: 8),
                    PasswordTextFieldWidget(
                      borderRadius: BorderRadius.circular(24),
                      hintText: 'password'.tr(),
                      controller: passwordC,
                      width: 327,
                      height: 52,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PrimaryTextButtonWidget(
                      onPressed: () {},
                      title: 'forgot_password'.tr(),
                      textStyle: const TextStyle(),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    PrimaryButtonWidget(
                      elevation: 0,
                      onTap: () {},
                      text: 'login'.tr(),
                      bgColor: ColorPalette.kPrimary,
                      borderRadius: 20,
                      height: 46,
                      width: 327,
                      textColor: ColorPalette.kWhite,
                      fontSize: 14,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: CustomRichTextWidget(
                        title: 'dont_have_account'.tr(),
                        subtitle: 'create_here'.tr(),
                        onTab: () {
                          Navigator.pushNamed(context, RouteNames.signUpScreen);
                        },
                        subtitleTextStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorPalette.kPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      DividerRowWidget(title: "or_sign_in_with".tr()),
                      const SizedBox(height: 24),
                      SecondaryButtonWidget(
                        height: 56,
                        textColor: ColorPalette.kGrayscaleDark100,
                        width: 300,
                        onTap: () {},
                        borderRadius: 24,
                        bgColor:
                        ColorPalette.kBackground.withOpacity(0.3),
                        text: 'continue_with_google'.tr(),
                        icons: AssetHelper.kGoogleIcon,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: TermsAndPrivacyTextWidget(
                    title1: 'by_signing_up'.tr(),
                    title2: 'terms'.tr(),
                    title3: 'and'.tr(),
                    title4: 'conditions_of_use'.tr(),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
