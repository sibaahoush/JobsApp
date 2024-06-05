import 'package:flutter/material.dart';
import 'package:jobsapp/features/company/presentation/views/widget/employ_container_item.dart';

class EmployListView extends StatelessWidget {
  const EmployListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        // itemCount: state is NotescubitSuccess ? state.notes.length:0,
        itemBuilder: (context, index) {
          return EmployContainerItem();
        });
  }
}
