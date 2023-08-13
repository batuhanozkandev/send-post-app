import 'package:flutter/material.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';

import '../core/constants/app_contants.dart';

class CommonSearchBox extends StatelessWidget {
  final TextEditingController controller;
  final String? hint;
  final Color? prefixColor;
  final Color? suffixColor;
  final Widget? prefix;
  final Widget? suffix;
  final void Function(String)? onChanged;

  const CommonSearchBox({
    super.key,
    required this.controller,
    this.hint = '',
    this.prefixColor,
    this.suffixColor,
    this.prefix,
    this.suffix,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.radiusSearchBox),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: context.fieldBackgroundColor,
        hintText: hint,
        hintStyle: context.bodySmall?.copyWith(
          color: Colors.grey,
        ),
        suffixIconColor: suffixColor,
        prefix: prefix,
        prefixIconColor: prefixColor,
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(horizontal: context.paddingHuge),
        isDense: false,
        constraints: BoxConstraints(
          maxHeight: context.heightOfScreen(
            AppConstants.commonSearchBoxHeight,
          ),
          maxWidth: context.widthOfScreen(
            AppConstants.commonSearchBoxWidth,
          ),
        ),
      ),
      style: context.bodyMedium,
      onChanged: onChanged,
    );
  }
}
