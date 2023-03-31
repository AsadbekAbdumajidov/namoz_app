import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {Key? key,
      required this.statusHeight,
      required this.onRightTap,
      required this.title})
      : super(key: key);

  final double statusHeight;
  final Function()? onRightTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      toolbarHeight: he(70),
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(left: wi(10)),
        child: CircleAvatar(
            radius: he(30),
            backgroundColor: Colors.white,
            child: Center(
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: EdgeInsets.only(right: wi(2)),
                  child: Icon(
                    CupertinoIcons.back,
                    color: AppColors.primaryColor,
                    size: he(30),
                  ),
                ),
              ),
            )),
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: he(26),
            fontFamily: "Fonts"),
      ),
      actions: [
        onRightTap == null
            ? const SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.only(
                  right: wi(10),
                ),
                child: GestureDetector(
                  onTap: onRightTap,
                  child: Icon(
                    Icons.help_outline_rounded,
                    size: he(35),
                    color: AppColors.primaryColor,
                  ),
                ),
              )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
