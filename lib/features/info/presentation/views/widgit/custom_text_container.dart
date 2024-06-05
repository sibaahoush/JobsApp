import 'package:flutter/material.dart';

class CustomTextontainer extends StatelessWidget {
  const CustomTextontainer(
      {super.key, required this.title, required this.text});
  final String title, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.yellowAccent),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.withOpacity(.1),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
