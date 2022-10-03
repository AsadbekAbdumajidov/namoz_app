import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = (Platform.isAndroid)
        ? Center(
            // ! loading_animation_widget paket
            child: LoadingAnimationWidget.hexagonDots(
              color: const Color.fromRGBO(12, 114, 100, 1),
              size: 50,
            ),
          )
        : const CupertinoActivityIndicator();
    return Container(
      alignment: Alignment.center,
      child: widget,
    );
  }
}
