import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_gallery/constants/constant.dart';
import 'package:photo_gallery/widgets/app_bar_widget.dart';
import '../widgets/nav_bar_widget.dart';

class ImageScreen extends StatelessWidget {
  final String img;

  const ImageScreen({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0,
        flexibleSpace: const CustomAppBar(),
      ),
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: kAllBarColor,
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: CachedNetworkImage(
          fit: BoxFit.fitHeight,
          imageUrl: img,
        ),
      )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        backgroundColor: kButtonColor,
        onPressed: () {},
        child: const Icon(
          Icons.share,
          color: kColorOther,
        ),
      ),
    );
  }
}
