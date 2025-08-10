import 'package:doctor_app/core/helper/spacing.dart';
import 'package:doctor_app/core/theming/color_app.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem(
      {super.key, this.specializationsData, required this.itemIndex});
  final SpecializationsData? specializationsData;
  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
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
            style: Styles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
