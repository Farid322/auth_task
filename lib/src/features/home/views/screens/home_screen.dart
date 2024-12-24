import 'package:flutter/material.dart';
import 'package:work_space/src/features/home/views/widget/app_bar.dart';
import 'package:work_space/src/features/home/views/widget/register_form.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController idcontroller = TextEditingController();
  final TextEditingController phonenumbercontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController tokencontroller = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecontroller.dispose();
    idcontroller.dispose();
    phonenumbercontroller.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    tokencontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: SingleChildScrollView(
            child: RegisterForm(
                namecontroller: namecontroller,
                idcontroller: idcontroller,
                emailcontroller: emailcontroller,
                passwordcontroller: passwordcontroller,
                tokencontroller: tokencontroller),
          ),
        ),
      ),
    );
  }
}
