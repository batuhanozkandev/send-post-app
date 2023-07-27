import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:send_post_app/core/constants/app_contants.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/theme.dart';

class CustomInputFormField extends StatelessWidget {
  final String? hint;
  final Widget? suffix;
  final Color? suffixColor;
  final Widget? prefix;
  final Color? prefixColor;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final bool? isPassword;
  final List<String? Function(String?)>? validators;
  final TextEditingController? controller;

  const CustomInputFormField({
    super.key,
    this.hint,
    this.suffix,
    this.suffixColor,
    this.prefix,
    this.prefixColor,
    this.textAlign = TextAlign.start,
    this.textInputType,
    this.isPassword = false,
    this.validators,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      key: key,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(context.radiusField),
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
          maxHeight: context.heightOfScreen(AppConstants.commonFieldHeight),
          maxWidth: context.widthOfScreen(AppConstants.commonFieldWidth),
        ),
      ),
      style: context.bodyMedium,
      textAlign: textAlign!,
      keyboardType: textInputType,
      obscureText: isPassword!,
      validator: FormBuilderValidators.compose(validators ?? []),
    );
  }
}
