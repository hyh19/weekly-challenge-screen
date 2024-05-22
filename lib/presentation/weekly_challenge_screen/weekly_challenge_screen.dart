import 'package:flutter/material.dart';
import 'weekly_challenge_screen/core/app_export.dart';
import 'weekly_challenge_screen/presentation/weekly_challenge_screen/controller/weekly_challenge_controller.dart';
import 'weekly_challenge_screen/widgets/app_bar/appbar_leading_image.dart';
import 'weekly_challenge_screen/widgets/app_bar/appbar_title.dart';
import 'weekly_challenge_screen/widgets/app_bar/custom_app_bar.dart'; // ignore_for_file: must_be_immutable

class WeeklyChallengeScreen extends GetWidget<WeeklyChallengeController> {
  const WeeklyChallengeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              _buildRowThisWeek(),
              SizedBox(height: 17.v),
              Container(
                height: 250.adaptSize,
                width: 250.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 42.v),
              _buildRowViewTwo(),
              SizedBox(height: 31.v),
              _buildRowTheThirdWeek(),
              SizedBox(height: 24.v),
              Container(
                height: 192.v,
                width: 352.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_weekly_challenge".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildRowThisWeek() {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_this_week".tr,
            style: theme.textTheme.headlineSmall,
          ),
          Container(
            height: 32.v,
            width: 58.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowViewTwo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 84.v,
            width: 68.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
          Container(
            height: 84.v,
            width: 68.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
          Container(
            height: 84.v,
            width: 68.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTheThirdWeek() {
    return Padding(
      padding: EdgeInsets.only(left: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_the_third_week".tr,
            style: theme.textTheme.titleMedium,
          ),
          Container(
            height: 21.v,
            width: 58.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          )
        ],
      ),
    );
  }
}
