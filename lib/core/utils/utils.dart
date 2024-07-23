import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tuneify/core/providers/shared_preference_provider.dart';

void showSnackbar({required String text, required BuildContext context}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}

void handleRefreshAccessToken(
  http.Response response,
  SharedPrefService pref,
) async {
  if (response.headers["x-access-token"] != null &&
      response.headers["x-access-token"] != "") {
    var currentTokens =
        jsonDecode(await pref.read("tokens")) as Map<String, dynamic>;

    currentTokens["accessToken"] = response.headers["x-access-token"];

    pref.save(
      "tokens",
      jsonEncode(currentTokens),
    );
  }
}

double countSongProgress({
  Duration? currentSongDuration,
  Duration? songWholeDuration,
}) {
  var songProgress = 0.0;

  final position = currentSongDuration?.inMilliseconds;

  final songDuration = songWholeDuration?.inMilliseconds;

  if (position != null && songDuration != null) {
    songProgress = position / songDuration;
  }

  return songProgress;
}

String rgbToHex(Color color) {
  return '${color.red.toRadixString(16).padLeft(2, '0')}${color.green.toRadixString(16).padLeft(2, '0')}${color.blue.toRadixString(16).padLeft(2, '0')}';
}

Color hexToColor(String hex) {
  return Color(int.parse(hex, radix: 16) + 0xFF000000);
}

Future<File?> pickImage() async {
  try {
    final filePickerRes =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (filePickerRes != null) {
      return File(filePickerRes.files.first.xFile.path);
    }

    return null;
  } catch (err) {
    return null;
  }
}

Future<File?> pickAudio() async {
  try {
    final filePickerRes =
        await FilePicker.platform.pickFiles(type: FileType.audio);
    if (filePickerRes != null) {
      return File(filePickerRes.files.first.xFile.path);
    }

    return null;
  } catch (err) {
    return null;
  }
}
