import 'package:flutter/material.dart';
import 'package:login_flutter/theme/colors.dart';

class InputBoxes extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool isPassword;
  final TextInputType keyboard;
  final TextEditingController controller;

  const InputBoxes({
    super.key,
    required this.label,
    required this.placeholder,
    required this.isPassword,
    required this.keyboard,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (isPassword != false) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: controller,
            keyboardType: keyboard,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .merge(const TextStyle(color: CustomColors.blackColor)),
            obscureText: true,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .merge(TextStyle(color: CustomColors.blueColor[400])),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: controller,
            keyboardType: keyboard,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .merge(const TextStyle(color: CustomColors.blackColor)),
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .merge(TextStyle(color: CustomColors.blueColor[400])),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      );
    }
  }
}
