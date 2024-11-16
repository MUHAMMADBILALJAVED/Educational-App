import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  VideoSection({super.key});

  // static data for videos
  List VideoList = [
    'Introduction to Flutter',
    'Installing Flutter on Windows',
    'Setup Emulator on VS Code',
    'Creating Our First App',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VideoList.length,
      physics: const AlwaysScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0 ? const Color.fromARGB(255, 117, 153, 252) : const Color.fromARGB(255, 117, 153, 252).withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: Text(VideoList[index]),
          subtitle: const Text("20 min 50"),
        );
      },
    );
  }
}
