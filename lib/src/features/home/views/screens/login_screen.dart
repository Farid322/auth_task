import 'package:flutter/material.dart';
import 'package:work_space/src/core/widgets/custom_btn.dart';
import 'package:work_space/src/core/widgets/custom_text_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Column(
        children: [
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
          const SizedBox(height: 20),
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
              const SizedBox(height: 30),
              CustomButton(text: 'Login',height: 55,width: 317,)
        ],
      ),
    );
  }
}
