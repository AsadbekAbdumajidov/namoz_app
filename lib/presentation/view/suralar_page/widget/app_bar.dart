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
      decoration: const BoxDecoration(
        color: Color.fromRGBO(238, 238, 238, 1),
      ),
      padding: EdgeInsets.only(top: statusHeight),
      child: Material(
        color: const Color.fromRGBO(238, 238, 238, 1),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        splashRadius: he(30),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromRGBO(12, 114, 100, 1),
                          size: 25,
                        ),
                      )),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Fonts"),
                  ),
                  const SizedBox(width: 40)
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
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(140);

  OutlineInputBorder inputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.transparent));
}
