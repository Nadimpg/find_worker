import 'package:find_worker/core/app_routes.dart';
import 'package:find_worker/utils/app_colors.dart';
import 'package:find_worker/utils/app_icons.dart';
import 'package:find_worker/utils/app_images.dart';
import 'package:find_worker/utils/app_strings.dart';
import 'package:find_worker/view/widgets/buttons/custom_button.dart';
import 'package:find_worker/view/widgets/image/custom_image.dart';
import 'package:find_worker/view/widgets/text/custom_text.dart';
import 'package:find_worker/view/widgets/text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SpSignUpScreen extends StatefulWidget {
  const SpSignUpScreen({super.key});

  @override
  State<SpSignUpScreen> createState() => _SpSignUpScreenState();
}

class _SpSignUpScreenState extends State<SpSignUpScreen> {
  int selectedItem = 0;
  List<String> serviceType = [
    'Home Clean'.tr,
    'Car Wash'.tr,
    'Farmer'.tr,
    'Air Condition Maintenance'.tr,
    'Pipe Fitter'.tr,
    'Jens Salon'.tr,
    'Man Driver'.tr,
    'Woman Driver'.tr,
    'Ladies Salon'.tr,
    'Home Business'.tr,
    'Butcher'.tr,
    'Private Tutor'.tr,
    'Henna'.tr,
    'Movers'.tr,
    'Gypsum Board & Floor'.tr,
    'Car Tires Repair'.tr,
    'Car Recovery'.tr,
    'Catering'.tr,
    'Cable Fixing'.tr,
  ];

  List<String> genderList = ["Male".tr, "Female".tr, "Others".tr];
  int selectedGender = 0;
  bool isClicked = false;
  void changeGender(int index) {
    selectedGender = index;
    setState(() {});
  }
  bool isSelected = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFF3F3F3),
                  Color(0xFFCCE0FA),
                ],
              ),
            ),
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return SingleChildScrollView(
                      padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
                      child: Column(children: [
                        const SizedBox(
                          height: 24,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.back();
                              },
                              child:const CustomImage(
                                imageSrc: AppIcons.chevronLeft,
                                size: 18,
                              ),
                            ),
                            CustomText(
                              text: 'Sign Up'.tr,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            SizedBox()
                          ],
                        ),
                        const SizedBox(
                          height: 34,
                        ),
                        Form(
                            key: _formKey,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   CustomText(
                                    text: 'Full Name'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    bottom: 8,
                                  ),
                                  CustomTextField(
                                    textAlign: TextAlign.start,
                                    hintText: 'Enter your full name'.tr,
                                    hintStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black_40),
                                    inputTextStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_100),
                                    fieldBorderColor: AppColors.blue_10,
                                    fieldBorderRadius: 8,
                                  ),
                                   CustomText(
                                    text: 'Date of Birth'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    bottom: 8,
                                    top: 16,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomTextField(
                                          textAlign: TextAlign.center,
                                          hintText: 'DD'.tr,
                                          hintStyle: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black_40),
                                          inputTextStyle: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColors.black_100),
                                          fieldBorderColor: AppColors.blue_10,
                                          fieldBorderRadius: 8,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: CustomTextField(
                                          textAlign: TextAlign.center,
                                          hintText: 'MM'.tr,
                                          hintStyle: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black_40),
                                          inputTextStyle: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColors.black_100),
                                          fieldBorderColor: AppColors.blue_10,
                                          fieldBorderRadius: 8,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: CustomTextField(
                                          textAlign: TextAlign.center,
                                          hintText: 'YYYY'.tr,
                                          hintStyle: GoogleFonts.poppins(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black_40),
                                          inputTextStyle: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColors.black_100),
                                          fieldBorderColor: AppColors.blue_10,
                                          fieldBorderRadius: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                   CustomText(
                                    text: 'Gender'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    bottom: 8,
                                    top: 16,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: List.generate(
                                        genderList.length,
                                            (index) => GestureDetector(
                                          onTap: () => changeGender(index),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 20,
                                                width: 20,
                                                padding:
                                                const EdgeInsetsDirectional
                                                    .all(0.5),
                                                decoration: BoxDecoration(
                                                    color: Colors.transparent,
                                                    border: Border.all(
                                                        color:
                                                        AppColors.blue_100),
                                                    shape: BoxShape.circle),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      color: index ==
                                                          selectedGender
                                                          ? AppColors.blue_100
                                                          : Colors.transparent,
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                genderList[index],
                                                style: GoogleFonts.poppins(
                                                    color: AppColors.black_100,
                                                    fontSize: 14,
                                                    fontWeight:
                                                    FontWeight.w500),
                                              )
                                            ],
                                          ),
                                        )),
                                  ),
                                   CustomText(
                                    text: 'Email'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  CustomTextField(
                                    textAlign: TextAlign.start,
                                    hintText: 'Enter your email'.tr,
                                    hintStyle: GoogleFonts.montserrat(
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
                                   CustomText(
                                    text: 'Phone number'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Container(
                                              height: 60,
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 6, horizontal: 8),
                                              decoration: BoxDecoration(
                                                  color: AppColors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  border: Border.all(
                                                      color: AppColors.blue_10)),
                                              child: IntlPhoneField(
                                                initialCountryCode: 'MX',
                                                disableLengthCheck: true,
                                                showDropdownIcon: false,
                                                showCountryFlag: true,
                                                decoration: const InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide.none,
                                                    )),
                                                onChanged: (phone) {
                                                  print(phone.completeNumber);
                                                },
                                              ))),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: CustomTextField(
                                          textAlign: TextAlign.start,
                                          hintText: 'Phone number'.tr,
                                          hintStyle: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black_40),
                                          inputTextStyle: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: AppColors.black_100),
                                          fieldBorderColor: AppColors.blue_10,
                                          fieldBorderRadius: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                   CustomText(
                                    text: 'Address'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  CustomTextField(
                                    textAlign: TextAlign.start,
                                    hintText: 'Enter your address'.tr,
                                    hintStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black_40),
                                    inputTextStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_100),
                                    fieldBorderColor: AppColors.blue_10,
                                    fieldBorderRadius: 8,
                                  ),
                                   CustomText(
                                    text: 'Service Type'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    textAlign: TextAlign.start,
                                    decoration: InputDecoration(
                                      suffixIcon: IconButton(onPressed: (){
                                        setState(() {
                                          isSelected=!isSelected;
                                        });
                                      }, icon:isSelected ? Icon(Icons.keyboard_arrow_up,size: 24,color: AppColors.black_80,) : Icon(Icons.keyboard_arrow_down_rounded,size: 24,color: AppColors.black_80,)
                                      ),
                                      filled: true,
                                      fillColor: AppColors.white,
                                      hintText:'Enter your service'.tr,
                                      hintStyle: GoogleFonts.montserrat(
                                              fontSize: 14,
                                               fontWeight: FontWeight.w500,
                                               color: AppColors.black_40),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: const BorderSide(color: AppColors.blue_10, width: 1),
                                          gapPadding: 0),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: const BorderSide(color: AppColors.blue_10, width: 1),
                                          gapPadding: 0),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(8),
                                          borderSide: const BorderSide(color: AppColors.blue_10, width: 1),
                                          gapPadding: 0),
                                    ),
                                    style: GoogleFonts.montserrat(
                                             fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                             color: AppColors.black_100),


                                  ),
                                  isSelected ? Container(
                                      decoration:const ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1, color: Color(0xFF0668E3)),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(8),
                                            bottomRight: Radius.circular(8),
                                          ),
                                        )
                                  ),
                                  child: Column(
                                    children: List.generate(
                                      serviceType.length,
                                          (index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              selectedItem = index;
                                            });
                                          },
                                          child: Container(
                                            margin: const EdgeInsets.only(bottom: 8),
                                            width: MediaQuery.of(context).size.width,
                                            decoration: ShapeDecoration(
                                              color: AppColors.white,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 16, right: 16, top: 12,),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    width: 20,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                          color: AppColors.blue_100, width: 1),
                                                      color: index == selectedItem ? AppColors.blue_100 : AppColors.white,
                                                    ),
                                                  ),
                                                  SizedBox(width: 16,),
                                                  CustomText(
                                                    text: serviceType[index],
                                                    color: AppColors.black_100,
                                                    left: 10,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  ): Container(),
                                   CustomText(
                                    text: 'Password'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  CustomTextField(
                                    isPassword: true,
                                    textAlign: TextAlign.start,
                                    hintText: 'Enter 8-10 digit password'.tr,
                                    hintStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black_40),
                                    inputTextStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_100),
                                    fieldBorderColor: AppColors.blue_10,
                                    fieldBorderRadius: 8,
                                  ),
                                   CustomText(
                                    text: 'Confirm Password'.tr,
                                    color: AppColors.black_100,
                                    fontWeight: FontWeight.w500,
                                    top: 16,
                                    bottom: 8,
                                  ),
                                  CustomTextField(
                                    isPassword: true,
                                    textAlign: TextAlign.start,
                                    hintText: 'Confirm your password'.tr,
                                    hintStyle: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.black_40),
                                    inputTextStyle: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.black_100),
                                    fieldBorderColor: AppColors.blue_10,
                                    fieldBorderRadius: 8,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  CustomButton(
                                    buttonWidth: MediaQuery.of(context).size.width,
                                    onPressed: () {
                                      Get.toNamed(AppRoute.spVerifyEmailOtpScreen);
                                    },
                                    titleText: 'Sign Up'.tr,
                                    titleColor: AppColors.white,
                                    buttonBgColor: AppColors.blue_100,
                                    titleSize: 18,
                                    titleWeight: FontWeight.w600,
                                  ),
                                  const SizedBox(height: 24,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                       CustomText(
                                        text: 'Already have an account?'.tr,
                                        color: AppColors.black_100,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Get.toNamed(AppRoute.spSignInScreen);
                                        },
                                        child:  CustomText(
                                          text: 'Sign In'.tr,
                                          color: AppColors.blue_100,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          left: 4,
                                          right: 4,
                                        ),
                                      ),
                                    ],
                                  )
                                ]))
                      ]));
                }),
          ),
        ));
  }
}
