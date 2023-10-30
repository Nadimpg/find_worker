import 'package:find_worker/core/app_routes.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_icons.dart';
import 'package:find_worker/utils/app_images.dart';
import 'package:find_worker/utils/app_strings.dart';
import 'package:find_worker/view/screens/user/user_hire_list/user_hire_details/user_hire_details_screen.dart';
import 'package:find_worker/view/widgets/app_bar/custom_app_bar.dart';
import 'package:find_worker/view/widgets/image/custom_image.dart';
import 'package:find_worker/view/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserHireListScreen extends StatefulWidget {
  const UserHireListScreen({super.key});

  @override
  State<UserHireListScreen> createState() => _UserHireListScreenState();
}

class _UserHireListScreenState extends State<UserHireListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          appBar: const CustomAppBar(
            appBarContent:Center(
              child: CustomText(
                text: AppStrings.hireList,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.blue_100,
              ),
            ),),
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                return SingleChildScrollView(
                  padding:const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                    child: Column(
                      children: List.generate(3, (index) =>   GestureDetector(
                        onTap: (){
                          // Get.toNamed(AppRoute.userHireDetailsScreen);
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>UserHireDetailsScreen()));
                        },
                        child: Container(
                          margin:const EdgeInsets.only(bottom: 16),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.blue_100,width: 1),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                            children: [
                              const CustomImage(imageSrc: AppImages.hireListProfile,imageType: ImageType.png,size: 83,),
                              const SizedBox(width: 16,),
                              Expanded(
                                  child:  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const CustomText(
                                            text: 'John Doe',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(vertical: 4,horizontal: 11),
                                            decoration: BoxDecoration(
                                                color: AppColors.yellow_10,
                                                borderRadius: BorderRadius.circular(4)
                                            ),
                                            child: const CustomText(
                                              text: AppStrings.pending,
                                              fontSize: 12,
                                              color: AppColors.yellow_100,
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 12,),
                                      const Row(
                                        children: [
                                          CustomImage(imageSrc: AppIcons.star,size: 12,),
                                          CustomText(
                                            text: '(4.5)',
                                            fontSize: 10,
                                            left: 4,
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 22,),
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(
                                            text: AppStrings.service,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.black_60,
                                          ),
                                          CustomText(
                                            text: AppStrings.carWash,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                      )),
                    )
                );
              }),
        ));
  }
}