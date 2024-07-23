import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/features/song/presentation/providers/current_song_notifier.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/features/song/presentation/providers/song_notifier.dart';
import 'package:tuneify/features/song/presentation/providers/song_state.dart';

class SongsPage extends ConsumerStatefulWidget {
  const SongsPage({super.key});

  @override
  ConsumerState<SongsPage> createState() => _SongsPageState();
}

class _SongsPageState extends ConsumerState<SongsPage> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(songNotifierProvider.notifier).getSongs();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final songState = ref.watch(songNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Songs Page"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Latest Today",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            switch (songState) {
              SongLoading() => const Center(child: CircularProgressIndicator()),
              SongFetchSuccess(songs: final songs) => songs.isNotEmpty
                  ? SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: songs.length,
                        itemBuilder: ((context, index) {
                          return GestureDetector(
                            onTap: () => ref
                                .read(currentSongNotifierProvider.notifier)
                                .selectSong(songs[index]),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    width: 180,
                                    height: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          songs[index].thumbnailURL,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  //if exceeds 180, it will wrap to the bottom
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      songs[index].name,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                  //if exceeds 180, it will wrap to the bottom
                                  SizedBox(
                                    width: 180,
                                    child: Text(
                                      songs[index].artist,
                                      style: const TextStyle(
                                        color: Pallete.subtitleText,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    )
                  : const Center(child: Text("No Songs found")),
              SongFailure(failure: final failure) =>
                Center(child: Text(failure.errorMessage)),
              _ => const SizedBox.shrink()
            },
          ],
        ),
      ),
    );
  }
}
