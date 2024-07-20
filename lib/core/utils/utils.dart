import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tuneify/core/providers/shared_preference_provider.dart';

void showSnackbar({required String text, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

void handleRefreshAccessToken(http.Response response, SharedPref pref) {
  if (response.headers["x-access-token"] != null &&
      response.headers["x-access-token"] != "") {
    var currentTokens = jsonDecode(pref.read("tokens")) as Map<String, dynamic>;

    currentTokens["accessToken"] = response.headers["x-access-token"];

    pref.save(
      "tokens",
      jsonEncode(currentTokens),
    );
  }
}
