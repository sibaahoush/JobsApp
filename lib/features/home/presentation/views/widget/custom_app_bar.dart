import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey,
      title: Center(
        child: Text('Jobs')
        ),
     actions: [
      IconButton(onPressed: (){}, icon:Icon(
        Icons.notifications_active_outlined
      ))
     ],   
    );
    
  }
}