import 'package:doctor_app/features/home/data/model/specializations_response_model.dart';
import 'package:doctor_app/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, this.doctorsList});
  final List<Doctors?>? doctorsList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (BuildContext context, int index) {
          return DoctorsListViewItem(
            doctorsModel: doctorsList?[index],
          );
        },
      ),
    );
  }
}
