
import 'package:find_worker/core/app_routes.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_constents.dart';
import 'package:find_worker/utils/app_icons.dart';
import 'package:find_worker/utils/app_strings.dart';
import 'package:find_worker/view/screens/service_provider/sp_profile/Controller/profile_controller.dart';
import 'package:find_worker/view/widgets/advanced_switch/advanced_switch.dart';
import 'package:find_worker/view/widgets/app_bar/custom_app_bar.dart';
import 'package:find_worker/view/widgets/image/custom_image.dart';
import 'package:find_worker/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';



class SpSettingScreen extends StatefulWidget {
  const SpSettingScreen({super.key});

  @override
  State<SpSettingScreen> createState() => _SpSettingScreenState();
}

class _SpSettingScreenState extends State<SpSettingScreen> {
  // ...
  final _controller = ValueNotifier<bool>(false);

    final _profileController = Get.put(SpProfileController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar:CustomAppBar(
            appBarContent: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap:(){
                    Get.back();
                  },
                  child:  const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 18,
                    color: AppColors.blue_100,
                  ),
                ),
                const CustomText(
                  text: AppStrings.settings,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.blue_100,
                ),
                const SizedBox()
              ],
            )),
        body:LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 20,vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                      text: AppStrings.language,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black_100,
                    ),
                    //Customized
                    AdvancedSwitch(
                      controller: _controller,
                      activeColor: AppColors.blue_10,
                      inactiveColor: AppColors.blue_10,
                      activeChild:  Text('English'
                        ,style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black_100
                        ),
                      ),
                      inactiveChild:  Text('Arabic',
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: AppColors.black_100
                        ),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      width: 90,
                      height: 30.0,
                      enabled: true,
                      disabledOpacity: 0.8,
                    ),
                    //Customized
                  ],
                ),

                /// <------------- Change Password ------------>
                if(_profileController.userData.value.authType==AppConstants.normalUser)
                  settingTile(title:AppStrings.changePassword,  onTap: () {
                    Get.toNamed(AppRoute.spChangePasswordScreen);
                  }),
                /// <------------- Terms Of Conditions Password ------------>
                  settingTile(title:"Terms of Conditions",onTap: () {
                    Get.toNamed(AppRoute.spTermsOfConditionsScreen);
                  }),
                /// <------------- Privacy Policy ------------>
                  settingTile(title:AppStrings.privacyPolicy,  onTap: () {
                    Get.toNamed(AppRoute.spPrivacyPolicyScreen);
                  }),
               /// <------------- About us ------------>
                  settingTile(title:AppStrings.aboutUs, onTap: () {
                    Get.toNamed(AppRoute.spAboutUsScreen);
                  }),
                /// <------------- Support ------------>
                  settingTile(title:AppStrings.support,onTap: () {
                    Get.toNamed(AppRoute.spSupportScreen);
                  }),
              ],
            ),
          );
        },)
    );
  }

   settingTile({required String title,required Function() onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(title,style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: AppColors.black_100,
                    ),),
                    trailing: const CustomImage(imageSrc: AppIcons.chevronRight,
                      size: 18,
                      imageType: ImageType.svg,
                      imageColor: AppColors.black_100,
                    ),
                  ),
    );
  }
}