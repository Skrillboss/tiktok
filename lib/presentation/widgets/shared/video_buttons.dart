import 'package:flutter/material.dart';
import 'package:tiktok/config/helpers/human_formats.dart';
import 'package:tiktok/domain/entities/video_post.dart';
import 'package:animate_do/animate_do.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _CustomIconButton(
          value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
      const SizedBox(height: 30),
      _CustomIconButton(
          value: video.views, iconData: Icons.remove_red_eye_outlined),
      const SizedBox(height: 30),
      SpinPerfect(
        duration: const Duration(seconds: 5),
        infinite: true,
        child: const _CustomIconButton(value: 0, iconData: Icons.play_circle_outlined))
    ]);
  }
}

class _CustomIconButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              iconData,
              color: color,
              size: 30,
            )),
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value))
      ],
    );
  }
}
