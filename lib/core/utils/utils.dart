import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void showSnackbar({required String text, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

void handleRefreshAccessToken(http.Response response) {
  if (response.headers["x-access-token"] != null &&
      response.headers["x-access-token"] != "") {
    //refresh token here
  }
}
