import 'package:flutter/material.dart';
import 'package:work_space/src/core/widgets/border.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.label, required this.hint, required this.prefix, required this.controller});

  final TextEditingController controller ;

  final String label;

  final String hint;

  final IconData prefix;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
            child: Icon(Icons.highlight_remove),
          ),
          border: Border1(color: Colors.white, redius: 60),
          enabledBorder: Border1(color: Colors.green, redius: 30),
          focusedBorder: Border1(color: Colors.blue, redius: 40)),
    );
  }
}
