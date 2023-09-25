import 'package:e_learn/Components/AppText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CostumTextFeild extends StatefulWidget {
  final TextEditingController controller;
  final String name;
  final String hint;
  final IconData prefix;
  bool obscure;
  bool enabled;
  final bool show;
  final TextInputType type;

  CostumTextFeild(
      {super.key,
      required this.hint,
      required this.prefix,
      required this.obscure,
      required this.type,
      this.show = false,
      this.enabled = true,
      required this.controller, required this.name});

  @override
  State<CostumTextFeild> createState() => _CostumTextFeildState();
}

class _CostumTextFeildState extends State<CostumTextFeild> {
  toggle(bool b) {
    setState(() {
      b = !b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppText(
              text: widget.name,
              fontsize: 12.sp,
              color: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        TextFormField(
          enabled: widget.enabled,
          controller: widget.controller,
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 12.sp,
            fontFamily: "Simple",
          ),
          enableSuggestions: false,
          obscureText: widget.obscure,
          keyboardType: widget.type,
          cursorColor: Theme.of(context).colorScheme.onSecondary,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.h),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 15.w, left: 10.w),
              child: Icon(
                widget.prefix,
                color: Theme.of(context).colorScheme.onSecondary,
                size: 16.h,
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: 5.h,
              bottom: 5.h,
              right: 6.h,
              left: 10.h,
            ),
            hintText: widget.hint,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 12.sp,
              fontFamily: "Simple",
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              ),
            ),
            fillColor: Theme.of(context).colorScheme.background,
            filled: true,
            suffixIconColor: Theme.of(context).colorScheme.primary,
            suffixIcon: widget.show == true
                ? widget.obscure
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscure = !widget.obscure;
                          });
                        },
                        child: Icon(
                          Icons.visibility_sharp,
                          size: 16.h,
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          setState(() {
                            widget.obscure = !widget.obscure;
                          });
                        },
                        child: Icon(
                          Icons.visibility_off_rounded,
                          size: 16.h,
                        ),
                      )
                : null,
          ),
        ),
      ],
    );
  }
}
