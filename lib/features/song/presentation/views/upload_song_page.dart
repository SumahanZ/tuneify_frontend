import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/core/utils/utils.dart';
import 'package:tuneify/core/widgets/custom_textfield.dart';
import 'package:tuneify/features/song/presentation/providers/song_notifier.dart';
import 'package:tuneify/features/song/presentation/providers/song_state.dart';
import 'package:tuneify/features/song/presentation/widgets/audio_wave.dart';

class UploadSongPage extends ConsumerStatefulWidget {
  const UploadSongPage({super.key});

  @override
  ConsumerState<UploadSongPage> createState() => _UploadSongPageState();
}

class _UploadSongPageState extends ConsumerState<UploadSongPage> {
  final _artistController = TextEditingController();
  final _songNameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Color _selectedColor = Pallete.cardColor;
  File? selectedImage;
  File? selectedAudio;

  void selectAudio() async {
    final pickedAudio = await pickAudio();
    if (pickedAudio != null) {
      setState(() {
        selectedAudio = pickedAudio;
      });
    }
  }

  void selectImage() async {
    final pickedImage = await pickImage();
    if (pickedImage != null) {
      setState(() {
        selectedImage = pickedImage;
      });
    }
  }

  @override
  void dispose() {
    _artistController.dispose();
    _songNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final songState = ref.watch(songNotifierProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Upload Song"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                if (selectedImage?.path != null &&
                    selectedAudio?.path != null &&
                    _formKey.currentState!.validate()) {
                  ref.read(songNotifierProvider.notifier).uploadSong(
                        artist: _artistController.text,
                        name: _songNameController.text,
                        audioFilePath: selectedAudio!.path,
                        thumbnailFilePath: selectedImage!.path,
                        hexCode: rgbToHex(_selectedColor),
                      );
                } else {
                  showSnackbar(text: "Missing fields", context: context);
                }
              },
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: switch (songState) {
          SongLoading() => const Center(child: CircularProgressIndicator()),
          _ => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: selectImage,
                        child: selectedImage != null
                            ? SizedBox(
                                height: 150,
                                width: double.infinity,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.file(
                                    selectedImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )
                            : DottedBorder(
                                strokeCap: StrokeCap.round,
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(10),
                                color: Pallete.borderColor,
                                dashPattern: const [10, 4],
                                child: const SizedBox(
                                  height: 150,
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.folder_open, size: 40),
                                      SizedBox(height: 15),
                                      Text(
                                        "Select the thumbnail for your song",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(height: 40),
                      selectedAudio != null
                          ? AudioWave(audioPath: selectedAudio!.path)
                          : CustomTextField(
                              hintText: "Pick Song",
                              onTap: selectAudio,
                            ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: "Artist",
                        controller: _artistController,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: "Song Name",
                        controller: _songNameController,
                      ),
                      const SizedBox(height: 20),
                      ColorPicker(
                        pickersEnabled: const {
                          ColorPickerType.wheel: true,
                        },
                        onColorChanged: (color) {
                          _selectedColor = color;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
        });
  }
}
