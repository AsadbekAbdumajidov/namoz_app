import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data_tahorat_olish.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/tahorat_olish_page/widget/oq_container_widget.dart';

class GreenContainerWidget extends StatelessWidget {
  const GreenContainerWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: SizedBox(
        height: he(700),
        width: MediaQuery.of(context).size.width,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ],
            color:  AppColors.primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: he(6)),
                child: Text(
                  DataTahoratOlish.title[index],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style:  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: he(25),
                      fontFamily: 'balo'),
                ),
              ),
              OqContainerWidget(son: index),
            ],
          ),
        ),
      ),
    );
  }
}
