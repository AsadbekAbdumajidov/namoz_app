import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class CustomSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSearchAppBar(
      {Key? key,
      required this.statusHeight,
      required FocusNode focusNode,
      required this.controller,
      required this.onCancel,
      required this.onChange,
      required this.title})
      : _focusNode = focusNode,
        super(key: key);

  final double statusHeight;
  final FocusNode _focusNode;
  final TextEditingController controller;
  final Function(String word) onChange;
  final Function() onCancel;
  final String title;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      
      padding: EdgeInsets.only(top: statusHeight),
      child:  Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: he(30),
                      backgroundColor: Colors.white,
                      child: IconButton(
                        splashRadius: 30,
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        icon:  Icon(
                          Icons.arrow_back_ios_new,
                          color: const Color.fromRGBO(12, 114, 100, 1),
                          size: he(35),
                        ),
                      )),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style:  TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: he(35),
                        fontFamily: "Fonts"),
                  ),
                   SizedBox(width: wi(40))
                ],
              ),
              SizedBox(height: he(18)),
              TextField(
                focusNode: _focusNode,
                onTap: () {},
                textInputAction: TextInputAction.done,
                controller: controller,
                onChanged: onChange,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.black45),
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset('assets/images/ic_search.svg',
                    color: Colors.black,
                        height: he(14), width: he(14)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: inputBorder(),
                  focusedBorder: inputBorder(),
                  enabledBorder: inputBorder(),
                ),
              ),
            ],
          ),
        ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(130);

  OutlineInputBorder inputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent));
}
