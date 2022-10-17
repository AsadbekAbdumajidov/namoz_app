import 'dart:math' show pi;
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/svg.dart';
import 'package:namoz_najotdir/presentation/view/qiblah/widget/loading_indicator.dart';

class StreemWidget extends StatelessWidget {
  const StreemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final compassSvg = SvgPicture.asset('assets/images/compass.svg');
    final needleSvg = SvgPicture.asset(
      'assets/images/compas1.svg',
      fit: BoxFit.contain,
      height: MediaQuery.of(context).size.height * 0.3,
      alignment: Alignment.center,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: StreamBuilder(
        stream: FlutterQiblah.qiblahStream,
        builder: (_, AsyncSnapshot<QiblahDirection> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          }
          final qiblahDirection = snapshot.data!;
          return Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: (qiblahDirection.direction * (pi / 180) * -1),
                child: compassSvg,
              ),
              Transform.rotate(
                angle: (qiblahDirection.qiblah * (pi / 180) * -1),
                alignment: Alignment.center,
                child: needleSvg,
              ),
              Positioned(
                bottom: 5,
                child: Text(
                  "${qiblahDirection.offset.toStringAsFixed(3)}°",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'balo'),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
