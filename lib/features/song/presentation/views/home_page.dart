import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tuneify/core/theme/app_pallete.dart';
import 'package:tuneify/features/song/presentation/views/library_page.dart';
import 'package:tuneify/features/song/presentation/views/songs_page.dart';
import 'package:tuneify/features/song/presentation/widgets/music_slab.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int selectedIndex = 0;

  List<Widget> tabPages = [
    const SongsPage(),
    const LibraryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          tabPages[selectedIndex],
          const Positioned(
            bottom: 0,
            child: MusicSlab(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tabIndex) => setState(() {
          selectedIndex = tabIndex;
        }),
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              selectedIndex == 0
                  ? "assets/images/home_filled.png"
                  : "assets/images/home_unfilled.png",
              color: selectedIndex == 0
                  ? Pallete.whiteColor
                  : Pallete.inactiveBottomBarItemColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/library.png",
              color: selectedIndex == 1
                  ? Pallete.whiteColor
                  : Pallete.inactiveBottomBarItemColor,
            ),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
