
import 'package:flutter/material.dart';

InputBorder Border1 ({required Color color, required double redius}){
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(redius),
    borderSide: BorderSide(color: color),
  );
}