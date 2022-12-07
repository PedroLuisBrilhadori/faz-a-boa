import 'package:flutter/material.dart';

class ProfilePhotos extends StatelessWidget {
  final String image;
  final String cover;

  const ProfilePhotos({super.key, required this.image, required this.cover});

  final profileHeight = 100.0;
  final coverHeight = 156.0;

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2;

    return Container(
      margin: EdgeInsets.only(bottom: 20 + (profileHeight / 2)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          coverImage(),
          Positioned(top: top, child: avatarImage()),
        ],
      ),
    );
  }

  Widget avatarImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundImage: imageSource(image),
      );

  imageSource(String image) {
    if (image.contains('lib/assets')) return AssetImage(image);

    return NetworkImage(image);
  }

  coverSource(String image) {
    if (image.contains('lib/assets')) {
      return Image.asset(
        image,
        width: double.infinity,
        height: coverHeight,
        fit: BoxFit.cover,
      );
    }

    return Image.network(
      image,
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    );
  }

  Widget coverImage() =>
      Container(color: Colors.grey, child: coverSource(cover));
}
