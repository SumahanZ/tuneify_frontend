import 'package:flutter/material.dart';

void showSnackbar({required String text, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
