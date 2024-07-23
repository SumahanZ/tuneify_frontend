import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/features/song/presentation/providers/current_song_notifier.dart';

class MusicSlider extends ConsumerStatefulWidget {
  final double songProgress;

  const MusicSlider({super.key, required this.songProgress});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MusicSliderState();
}

class _MusicSliderState extends ConsumerState<MusicSlider> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    final currentSongNotifier = ref.read(currentSongNotifierProvider.notifier);
    sliderValue = widget.songProgress;
    return StatefulBuilder(
      builder: (context, setState) {
        return SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: Pallete.whiteColor,
            activeTrackColor: Pallete.whiteColor,
            inactiveTrackColor: Pallete.whiteColor.withOpacity(0.117),
            trackHeight: 4,
            overlayShape: SliderComponentShape.noOverlay,
          ),
          child: Slider(
            min: 0,
            max: 1,
            value: sliderValue,
            onChanged: (value) {
              sliderValue = value;
              setState(() {});
            },
            onChangeEnd: (value) => currentSongNotifier.seekSongDuration(value),
          ),
        );
      },
    );
  }
}
