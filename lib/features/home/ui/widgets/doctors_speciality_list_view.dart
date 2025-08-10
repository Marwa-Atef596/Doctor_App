import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;

  const DoctorsSpecialityListView(
      {super.key, required this.specializationDataList});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: specializationDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return DoctorSpecialityListViewItem(
            itemIndex: index,
            specializationsData: specializationDataList[index],
          );
        },
      ),
    );
  }
}
