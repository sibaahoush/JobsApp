import 'package:flutter/material.dart';
import 'package:jobsapp/features/home/presentation/views/widget/custom_text_fiald.dart';

class CompanyTextContainer extends StatefulWidget {
  const CompanyTextContainer({super.key, required this.title});
  final String title;

  @override
  State<CompanyTextContainer> createState() => _CompanyTextContainerState();
}

class _CompanyTextContainerState extends State<CompanyTextContainer> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController textController = TextEditingController();
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
                widget.title,
                style: TextStyle(color: Colors.yellowAccent),
              ),
              const SizedBox(
                height: 8,
              ),
              CustomTextField(
                  fillColor: Colors.grey.withOpacity(.2),
                  max: 8,
                  hint: 'Write',
                  controller: textController)
            ],
          ),
        ));
  }
}

class TextForm extends StatefulWidget {
  const TextForm({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(color: Colors.yellowAccent),
          ),
          const SizedBox(
            height: 8,
          ),
          CustomTextField(
              fillColor: Colors.grey.withOpacity(.2),
              max: 8,
              hint: 'Write',
              controller: textController)
        ],
      ),
    );
  }
}
