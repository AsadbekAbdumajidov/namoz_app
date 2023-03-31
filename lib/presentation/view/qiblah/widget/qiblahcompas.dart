import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

import 'package:geolocator/geolocator.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/view/qiblah/widget/elevated_buttons_widget.dart';
import 'package:namoz_najotdir/presentation/view/qiblah/widget/qiblah_compas_widget.dart';

import 'loading_indicator.dart';
import 'location_error.dart';

class QiblahCompass extends StatefulWidget {
  const QiblahCompass({Key? key}) : super(key: key);

  @override
  State<QiblahCompass> createState() => _QiblahCompassState();
}

class _QiblahCompassState extends State<QiblahCompass> {
  final _locationStreamController =
      StreamController<LocationStatus>.broadcast();

  get stream => _locationStreamController.stream;

  @override
  void initState() {
    _checkLocationStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideInUp(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppbar(
            statusHeight: 0,
            onRightTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            title: Data.boshMenu[1].toString()),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ElevatedButtonWidget(),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: StreamBuilder(
                stream: stream,
                builder: (context, AsyncSnapshot<LocationStatus> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const LoadingIndicator();
                  }
                  if (snapshot.data!.enabled == true) {
                    switch (snapshot.data!.status) {
                      case LocationPermission.always:
                      case LocationPermission.whileInUse:
                        return const QiblahCompassWidget();

                      case LocationPermission.denied:
                        return LocationErrorWidget(
                          error: "Location service permission denied",
                          callback: _checkLocationStatus,
                        );
                      case LocationPermission.deniedForever:
                        return LocationErrorWidget(
                          error: "Location service Denied Forever !",
                          callback: _checkLocationStatus,
                        );

                      default:
                        return Container();
                    }
                  } else {
                    return LocationErrorWidget(
                      error: "Please enable Location service",
                      callback: _checkLocationStatus,
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _checkLocationStatus() async {
    final locationStatus = await FlutterQiblah.checkLocationStatus();
    if (locationStatus.enabled &&
        locationStatus.status == LocationPermission.denied) {
      await FlutterQiblah.requestPermissions();
      final s = await FlutterQiblah.checkLocationStatus();
      _locationStreamController.sink.add(s);
    } else {
      _locationStreamController.sink.add(locationStatus);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _locationStreamController.close();
    FlutterQiblah().dispose();
  }
}

class QiblahCompassWidget extends StatelessWidget {
  const QiblahCompassWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: StreemWidget(),
    );
  }
}
