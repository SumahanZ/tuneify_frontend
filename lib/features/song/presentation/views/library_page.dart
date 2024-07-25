import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/features/song/presentation/providers/current_song_notifier.dart';
import 'package:tuneify/features/song/presentation/providers/song_notifier.dart';
import 'package:tuneify/features/song/presentation/views/upload_song_page.dart';

class LibraryPage extends ConsumerStatefulWidget {
  const LibraryPage({super.key});

  @override
  ConsumerState<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends ConsumerState<LibraryPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(getFavoriteSongs).when(
          data: (songs) {
            return ListView.builder(
              itemCount: songs.length + 1,
              itemBuilder: (context, index) {
                if (index == songs.length) {
                  return ListTile(
                    title: const Text(
                      "Upload New Song",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                    ),
                    leading: const CircleAvatar(
                      radius: 35,
                      backgroundColor: Pallete.backgroundColor,
                      child: Icon(
                        CupertinoIcons.plus,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UploadSongPage(),
                        ),
                      );
                    },
                  );
                }

                return ListTile(
                  title: Text(
                    songs[index].name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  subtitle: Text(
                    songs[index].artist,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      songs[index].thumbnailURL,
                    ),
                    radius: 35,
                    backgroundColor: Pallete.backgroundColor,
                  ),
                  onTap: () {
                    ref
                        .read(currentSongNotifierProvider.notifier)
                        .selectSong(songs[index]);
                  },
                );
              },
            );
          },
          error: ((error, stackTrace) => Center(child: Text(error.toString()))),
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
