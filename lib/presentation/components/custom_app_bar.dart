import 'package:flutter/material.dart';
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
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      elevation: 0,
      toolbarHeight: he(70),
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(top: he(5), left: wi(10)),
        child: CircleAvatar(
          radius: he(30),
            backgroundColor: Colors.white,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: const Color.fromRGBO(12, 114, 100, 1),
                size: he(35),
              ),
            )),
      ),
      title: Text(
        title,
        style:  TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: he(30),
            fontFamily: "Fonts"),
      ),
      actions: [
        onRightTap == null
            ? const SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.only(
                  right: wi(10),
                ),
                child: IconButton(
                  splashRadius: 25,
                  onPressed: onRightTap,
                  icon: Icon(
                    Icons.help_outline_rounded,
                    size: he(45),
                    color: const Color.fromRGBO(12, 114, 100, 1),
                  ),
                ),
              )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
