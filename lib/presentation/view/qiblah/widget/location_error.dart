import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';

class LocationErrorWidget extends StatelessWidget {
  final String? error;
  final Function? callback;

  const LocationErrorWidget({Key? key, this.error, this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final box = SizedBox(height: MediaQuery.of(context).size.height * 0.2);
    var errorColor = const Color(0xffb00020);

    return SizedBox(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.location_off,
              size: 150,
              color: errorColor,
            ),
            box,
            Text(
              error!,
              style: TextStyle(color: errorColor, fontWeight: FontWeight.bold),
            ),
            box,

            ElevatedButton(
              style: OutlinedButton.styleFrom(
            backgroundColor:  AppColors.primaryColor,
            minimumSize: Size(
              MediaQuery.of(context).size.width * 0.3,
              MediaQuery.of(context).size.height * 0.06,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
              child: const Padding(
                
                padding:  EdgeInsets.symmetric(horizontal: 40,vertical: 5),
                child: Text("Retry",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'balo',fontSize: 20)),
              ),
              onPressed: () {
                if (callback != null) callback!();
              },
            )
          ],
        ),
      ),
    );
  }
}
