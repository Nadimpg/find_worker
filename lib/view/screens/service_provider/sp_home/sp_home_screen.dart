import 'package:find_worker/core/app_routes.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_icons.dart';
import 'package:find_worker/utils/app_images.dart';
import 'package:find_worker/utils/app_strings.dart';
import 'package:find_worker/view/screens/service_provider/sp_home/inner_widgets/sp_home_bottom_modal.dart';
import 'package:find_worker/view/screens/service_provider/sp_home/inner_widgets/sp_home_job_details_section.dart';
import 'package:find_worker/view/widgets/app_bar/custom_app_bar.dart';
import 'package:find_worker/view/widgets/buttons/custom_button.dart';
import 'package:find_worker/view/widgets/image/custom_image.dart';
import 'package:find_worker/view/widgets/on_off_switch/on_off_switch.dart';
import 'package:find_worker/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SpHomeScreen extends StatefulWidget {
  const SpHomeScreen({super.key});

  @override
  State<SpHomeScreen> createState() => _SpHomeScreenState();
}
class _SpHomeScreenState extends State<SpHomeScreen> {
  bool status = false;
  final _controller = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppColors.white,
          appBar:  CustomAppBar(appBarContent:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               CustomText(
                text: 'Logo'.tr,
                color: AppColors.blue_100,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              OnOffSwitch(
                controller: _controller,
                activeColor: AppColors.blue_100,
                inactiveColor: AppColors.black_100,
                activeChild:  Text('Online'.tr,
                  maxLines: 1
                  ,style: GoogleFonts.poppins(

                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white
                  ),
                ),
                inactiveChild:  Text('Offline'.tr,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white
                  ),
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                width: 80,
                height: 26.0,
                enabled: true,
                disabledOpacity: 0.8,
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.spNotificationScreen);
                },
                  child: const CustomImage(imageSrc:AppIcons.bell,size: 24,))
            ],),),
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context){
                                  return const SpHomeBottomModalSheet();
                                });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration:  BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.blue_100,width: 1),
                              gradient: const LinearGradient(
                                colors: [Color(0xFFF3F3F3),Color(0xFFCCE0FA),],
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 1,color: AppColors.blue_100),
                                    image: const DecorationImage(image: AssetImage('assets/images/profile_smith.png'))
                                  ),
                                ),
                                const SizedBox(width: 16,),
                                 Expanded(
                                    child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: 'John Doe',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        Row(
                                          children: [
                                            CustomImage(
                                              imageSrc: AppIcons.star,size: 12,
                                            ),
                                            CustomText(
                                              text: '(4.5)',
                                              fontWeight: FontWeight.w500,
                                              left: 4,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const SizedBox(height: 16,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomText(
                                          text: 'Service'.tr,
                                          color: AppColors.black_60,
                                        ),
                                        CustomText(
                                          text: 'Car Wash'.tr,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 94,),
                        // SpHomeJobDetailsSection(),
                        Column(
                          children: [
                            CustomImage(imageSrc: AppImages.Empty,imageType: ImageType.png,size: 100,),
                            SizedBox(height: 24,),
                            CustomButton(onPressed: (){
                              Get.toNamed(AppRoute.spAddNewServiceScreen);
                            }, titleText: 'Add Service'.tr,buttonBgColor: AppColors.blue_100,buttonHeight: 44,leftPadding: 50,rightPadding: 50,)
                          ],
                        )

                      ],
                    )
                );
              }),
        ));
  }
}
