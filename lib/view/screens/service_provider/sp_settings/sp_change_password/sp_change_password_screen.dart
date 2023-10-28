import 'package:find_worker/core/app_routes.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_icons.dart';
import 'package:find_worker/utils/app_strings.dart';
import 'package:find_worker/view/widgets/app_bar/custom_app_bar.dart';
import 'package:find_worker/view/widgets/buttons/bottom_nav_button.dart';
import 'package:find_worker/view/widgets/image/custom_image.dart';
import 'package:find_worker/view/widgets/text/custom_text.dart';
import 'package:find_worker/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SpChangePasswordScreen extends StatefulWidget {
  const SpChangePasswordScreen({super.key});

  @override
  State<SpChangePasswordScreen> createState() => _SpChangePasswordScreenState();
}

class _SpChangePasswordScreenState extends State<SpChangePasswordScreen> {
/*  @override
  void initState() {
    DeviceUtils.authUtils();
    super.initState();
  }*/
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar:  CustomAppBar(
            appBarContent:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 18,
                    color: AppColors.blue_100,
                  ),
                ),
                Text(
                  AppStrings.changePassword,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: AppColors.blue_100,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox()
              ],
            ),
          ),
          body:  LayoutBuilder(
              builder: (BuildContext context,BoxConstraints constraints){
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Current Password',
                        color: AppColors.black_100,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        top: 16,
                        bottom: 8,
                      ),
                      CustomTextField(
                        isPassword: true,
                        textAlign: TextAlign.start,
                        hintText: AppStrings.enterYourPassword,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black_40),
                        inputTextStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.black_100),
                        fieldBorderColor: AppColors.blue_10,
                        fieldBorderRadius: 8,

                      ),
                      const CustomText(
                        text: "New Password",
                        color: AppColors.black_100,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        top: 16,
                        bottom: 8,
                      ),
                      CustomTextField(
                        isPassword: true,
                        textAlign: TextAlign.start,
                        hintText: "Enter your new password",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black_40),
                        inputTextStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.black_100),
                        fieldBorderColor: AppColors.blue_10,
                        fieldBorderRadius: 8,

                      ),
                      const CustomText(
                        text: AppStrings.confirmPassword,
                        color: AppColors.black_100,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        top: 16,
                        bottom: 8,
                      ),
                      CustomTextField(
                        isPassword: true,
                        textAlign: TextAlign.start,
                        hintText: AppStrings.reEnterYourNewPassword,
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black_40),
                        inputTextStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.black_100),
                        fieldBorderColor: AppColors.blue_10,
                        fieldBorderRadius: 8,

                      ),
                      GestureDetector(
                        onTap: (){
                          Get.toNamed(AppRoute.changeForgetPasswordScreen);
                        } ,
                        child: const CustomText(
                          text: AppStrings.forgetPassword,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blue_100,
                          top: 16,
                        ),
                      )
                    ],
                  ),
                );
              }
          ),
          bottomNavigationBar: BottomNavButton(buttonText: 'Save', onTap: (){}),
        ));
  }
}