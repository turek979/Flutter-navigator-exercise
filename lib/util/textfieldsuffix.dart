import 'package:flutter/material.dart';
import 'package:flutter_login_exercise/util/app_colors.dart';

class CustomTextFieldSuffix extends StatefulWidget {
  final String hintText;
  final String prefix;
  final String suffix;

  CustomTextFieldSuffix(this.hintText,
      {super.key, required this.suffix, required this.prefix});

  @override
  State<CustomTextFieldSuffix> createState() => _CustomTextFieldSuffixState();
}

class _CustomTextFieldSuffixState extends State<CustomTextFieldSuffix> {
  var boolValue = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390,
      height: 50,
      child: TextFormField(
        obscureText: boolValue,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 11),
            child: Image.asset(widget.prefix),
          ),
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  boolValue = !boolValue;
                });
              },
              child: Image.asset(widget.suffix)),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 0.3)),
          border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide:
                  BorderSide(color: AppColors.appBorderPurple, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide:
                  BorderSide(color: AppColors.appBorderPurple, width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide:
                  BorderSide(color: AppColors.appBorderPurple, width: 2)),
        ),
      ),
    );
  }
}
