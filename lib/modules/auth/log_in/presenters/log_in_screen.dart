import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:send_post_app/core/constants/app_icons.dart';
import 'package:send_post_app/core/constants/app_routes.dart';
import 'package:send_post_app/core/extensions/sizer.dart';
import 'package:send_post_app/core/extensions/space.dart';
import 'package:send_post_app/core/extensions/theme.dart';
import 'package:send_post_app/modules/auth/auth_controller.dart';

import '../../../../entities/user.dart';
import '../../../../models/custom_common_button.dart';
import '../../../../models/custom_input_form_field.dart';
import '../../../../models/highlighted_action_text.dart';
import '../../../base/presenter/base_screen.dart';

class LogInScreen extends GetWidget<AuthController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
        hasFocusHandler: true,
        background: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
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
                key: formKey,
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
                          onTap: () => controller.obscureIsActive.value =
                              !controller.obscureIsActive.value,
                          child: SvgPicture.asset(
                            AppIcons.show,
                            color: controller.obscureIsActive.value
                                ? Colors.black
                                : Colors.grey,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        suffixColor: Colors.blue,
                        validators: [
                          FormBuilderValidators.required(),
                          FormBuilderValidators.minLength(6),
                        ],
                      ),
                    ),
                    context.ySmall,
                    HighlightedActionText(
                      text: 'FORGOT PASSWORD',
                      onTap: () => Get.toNamed(
                        AppRoutes.home,
                      ),
                    ),
                    context.ySmall,
                    CustomCommonButton(
                        text: 'LOG IN',
                        onTap: () {
                          if (formKey.currentState?.validate() ?? false) {
                            User user = User(
                              '',
                              '',
                              '',
                              controller.emailController.text,
                              controller.passwordController.text,
                              0,
                              0,
                              0,
                              [],
                              [],
                              '',
                              false,
                              [],
                            );
                            controller.logIn(user);
                          }
                        }),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
