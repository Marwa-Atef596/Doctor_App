import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';
import 'package:doctor_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_app/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;

  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selecteSpecializationsIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: widget.specializationDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selecteSpecializationsIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationDataList[index]?.id);
            },
            child: SpecialityListViewItem(
              itemIndex: index,
              specializationsData: widget.specializationDataList[index],
              selectedIndex: selecteSpecializationsIndex,
            ),
          );
        },
      ),
    );
  }
}
