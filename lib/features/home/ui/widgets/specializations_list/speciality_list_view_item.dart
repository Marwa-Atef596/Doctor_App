import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/color_app.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SpecialityListViewItem extends StatelessWidget {
  const SpecialityListViewItem(
      {super.key,
      this.specializationsData,
      required this.itemIndex,
      required this.selectedIndex});
  final SpecializationsData? specializationsData;
  final int itemIndex;
  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorApp.darkBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorApp.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/ManDoctor.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorApp.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/ManDoctor.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            specializationsData?.name ?? "Specialization",
            style: itemIndex == selectedIndex
                ? Styles.font14DarkBlueBold
                : Styles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
