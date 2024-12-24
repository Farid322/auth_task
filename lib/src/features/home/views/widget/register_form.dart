
import 'package:flutter/material.dart';
import 'package:work_space/src/core/widgets/custom_btn.dart';
import 'package:work_space/src/core/widgets/custom_text_form.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
    required this.namecontroller,
    required this.idcontroller,
    required this.emailcontroller,
    required this.passwordcontroller,
    required this.tokencontroller,
  });

  final TextEditingController namecontroller;
  final TextEditingController idcontroller;
  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;
  final TextEditingController tokencontroller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "برجاء إدخال الاسم";
            } else if (value.trim().length < 3) {
              return "يجب أن يكون الاسم مكوّنًا من 3 أحرف على الأقل";
            }
            return null;
          },
          controller: namecontroller,
          label: 'الاسم',
          hint: 'ادخل الاسم',
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "برجاء إدخال الرقم القومي";
            } else if (value.trim().length != 14) {
              return "يجب أن يتكون الرقم القومي من 14 رقمًا";
            }
            return null;
          },
          controller: idcontroller,
          label: 'الرقم القومى ',
          hint: "ادخل الرقم القومى",
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "برجاء إدخال البريد الإلكتروني";
            } else if (!value.contains('@') || !value.contains('.')) {
              return "يجب أن يكون البريد الإلكتروني بصيغة صحيحة";
            } else if (value.indexOf('@') > value.lastIndexOf('.')) {
              return "يجب أن يكون البريد الإلكتروني بصيغة صحيحة";
            }
            return null;
          },
          label: 'ادخل الايميل',
          hint: 'الايميل',
          controller: emailcontroller,
        ),
        const SizedBox(height: 10),
        CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "برجاء إدخال كلمة المرور";
              } else if (value.length < 8) {
                return "يجب أن تكون كلمة المرور مكوّنة من 8 أحرف على الأقل";
              }
              return null;
            },
            label: 'ادخل كلمة المرور',
            hint: 'كلمة المرور',
            controller: passwordcontroller),
        const SizedBox(height: 10),
        CustomTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "برجاء إدخال الرمز";
              } else if (value.length < 5) {
                return "يجب أن يكون الرمز مكوّنًا من 5 أحرف على الأقل";
              }
              return null;
            },
            label: 'token ',
            hint: 'token',
            controller: tokencontroller),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          text: 'Sign IN',
          height: 55,
        )
      ],
    );
  }
}
