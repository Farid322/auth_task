import 'package:flutter/material.dart';
import 'package:work_space/src/core/widgets/border.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key, 
   required this.label,
    required this.hint, 
     this.prefix, 
    required this.controller,
     this.validator});

  final TextEditingController controller ;
  final String label;
  final String hint;
  final IconData? prefix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
          label: Text(label),
          prefixIcon: InkWell(
            child: Icon(prefix),
          ),
          suffix: InkWell(
            onTap: () {
              controller.clear();
            },
            child: const Icon(Icons.highlight_remove),
          ),
          border: Border1(color: Colors.white, redius: 60),
          enabledBorder: Border1(color: Colors.green, redius: 30),
          focusedBorder: Border1(color: Colors.blue, redius: 40)),
    );
  }
}
