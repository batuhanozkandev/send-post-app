import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/auth/auth_controller.dart';

import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../models/custom_common_button.dart';
import '../../../../models/custom_input_form_field.dart';
import '../../../base_page/presenter/base_page.dart';

class SignUpScreen extends GetWidget<AuthController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        hasFocusHandler: true,
        background: Image.asset(
          AppImages.lightBackground,
          fit: BoxFit.cover,
        ),
        child: Column(
          children: [
            SizedBox(
              height: context.heightOfScreen(40),
              width: double.infinity,
            ),
            Container(
              height: context.heightOfScreen(60),
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(context.radiusHuge),
                  topRight: Radius.circular(context.radiusHuge),
                ),
              ),
              child: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    context.ySmall,
                    // email input
                    CustomInputFormField(
                      key: const Key('email'),
                      controller: controller.emailController,
                      hint: 'Email',
                      validators: [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.email(),
                      ],
                    ),
                    context.ySmall,
                    // password input
                    Obx(
                      () => CustomInputFormField(
                        key: const Key('password'),
                        controller: controller.passwordController,
                        hint: 'Password',
                        isPassword: controller.obscureIsActive.value,
                        suffix: InkWell(
                          onTap: () => controller.toggleVisibilityOfInput(),
                          child: SvgPicture.asset(
                            AppIcons.show,
                            color: controller.obscureIsActive.value
                                ? Colors.black
                                : Colors.grey,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        validators: [
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ],
                      ),
                    ),
                    context.ySmall,
                    CustomCommonButton(
                      text: 'SIGN UP',
                      onTap: () => controller.signUp(),
                    ),
                    context.ySmall,
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
