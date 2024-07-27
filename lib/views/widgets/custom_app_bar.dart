import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipo/views/utils/AppColor.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool showProfilePhoto;
  final ImageProvider? profilePhoto;
  final VoidCallback? profilePhotoOnPressed;

  CustomAppBar({
    required this.title,
    required this.showProfilePhoto,
    this.profilePhoto,
    this.profilePhotoOnPressed,
  });

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.primary,
      foregroundColor: Colors.white,
      title: title,
      centerTitle: true,
      elevation: 0,
      actions: [
        if (showProfilePhoto && profilePhoto != null)
          Container(
            margin: EdgeInsets.only(right: 16),
            alignment: Alignment.center,
            child: IconButton(
              onPressed: profilePhotoOnPressed,
              icon: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  image:
                      DecorationImage(image: profilePhoto!, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
      ],
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }
}
