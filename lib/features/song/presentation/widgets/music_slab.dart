import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/providers/current_user_provider.dart';
import 'package:tuneify/core/utils/utils.dart';
import 'package:tuneify/features/song/presentation/providers/current_song_notifier.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/features/song/presentation/providers/song_notifier.dart';
import 'package:tuneify/features/song/presentation/views/music_player_page.dart';
import 'package:collection/collection.dart';

class MusicSlab extends ConsumerWidget {
  const MusicSlab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentSong = ref.watch(currentSongNotifierProvider);
    final currentSongNotifier = ref.read(currentSongNotifierProvider.notifier);
    final currentUser = ref.watch(currentUserProvider);

    if (currentSong == null) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                const MusicPlayerPage(),
            transitionsBuilder: (context, animation, _, child) {
              //change the tween animation timing from default linear to easeIn
              final tween = Tween<Offset>(
                begin: const Offset(0, 1),
                end: const Offset(0, 0),
              ).animate(
                CurvedAnimation(parent: animation, curve: Curves.easeIn),
              );

              return SlideTransition(position: tween, child: child);
            },
          ),
        );
      },
      child: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 66,
            padding: const EdgeInsets.all(9),
            width: MediaQuery.of(context).size.width - 16,
            decoration: BoxDecoration(
              color: hexToColor(currentSong.hexCode),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Hero(
                      tag: "music-image",
                      child: Container(
                        width: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                            image: NetworkImage(
                              currentSong.thumbnailURL,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentSong.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          currentSong.artist,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Pallete.subtitleText,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () => ref
                          .read(songNotifierProvider.notifier)
                          .addRemoveFavorites(currentSong.id),
                      icon: Icon(
                        (currentUser?.favoriteSongs.firstWhereOrNull(
                                  (element) {
                                    return element.song == currentSong.id;
                                  },
                                )) !=
                                null
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: Pallete.whiteColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () => currentSongNotifier.playPause(),
                      icon: Icon(
                        currentSongNotifier.isPlaying == false
                            ? CupertinoIcons.play_fill
                            : CupertinoIcons.pause_fill,
                        color: Pallete.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          StreamBuilder(
            stream: currentSongNotifier.player?.positionStream,
            builder: (context, snapshot) {
              final songPosition = snapshot.data;

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox();
              }

              return Positioned(
                bottom: 0,
                left: 8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  height: 3,
                  width: countSongProgress(
                        currentSongDuration: songPosition,
                        songWholeDuration: currentSongNotifier.player?.duration,
                      ) *
                      (MediaQuery.of(context).size.width - 32),
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            left: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Pallete.inactiveSeekColor,
                borderRadius: BorderRadius.circular(7),
              ),
              height: 3,
              width: MediaQuery.of(context).size.width - 16,
            ),
          ),
        ],
      ),
    );
  }
}