import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
          enabledBorder: buildBorder(),
          //focusedBorder: buildBorder(),
          hintText: 'search',
          prefixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 22,
            ),
          ),
    
           suffixIcon: Icon(
            
              FontAwesomeIcons.circleXmark,
              size: 22,
            
          )
          ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(30));
  }
}
