import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/data/suralar_data.dart';
import 'package:namoz_najotdir/presentation/cubit/search_cubit/search_cubit.dart';
import 'package:namoz_najotdir/presentation/view/suralar_page/widget/app_bar.dart';
import 'package:namoz_najotdir/presentation/view/suralar_page/widget/builder_suralar.dart';

class SuralarPage extends StatefulWidget {
  const SuralarPage({Key? key}) : super(key: key);

  @override
  State<SuralarPage> createState() => _UstunlarPageState();
}

class _UstunlarPageState extends State<SuralarPage> {
  final _focusNode = FocusNode();
  final controller = TextEditingController();

  @override
  void dispose() {
    _focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double statusHeight = MediaQuery.of(context).viewPadding.top;

    return SlideInUp(
      child: BlocProvider(
        create: (_) => SearchCubit(),
        child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            appBar: CustomSearchAppBar(
              statusHeight: statusHeight,
              focusNode: _focusNode,
              title: Data.boshMenu[10].toString(),
              controller: controller,
              onCancel: () {
                if (controller.text != '') {
                  controller.text = '';
                  _focusNode.unfocus();
                  context.read<SearchCubit>().emptySearch();
                } else if (controller.text == "") {
                  Navigator.pop(context);
                }
              },
              onChange: (word) {
                context.read<SearchCubit>().search(word,Suralar.suralar);
              },
            ),
            body: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.17,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/maschid.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: (controller.text.isEmpty)
                          ? ListView.builder(
                              itemCount: Suralar.suralar.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (_, __) {
                                return WidgetBuilderSuralar(
                                  name: Suralar.suralar[__]["name"],
                                  index: __,
                                  onTap: () {
                                    Navigator.pushNamed(context, "/suralarCon",
                                        arguments: __);
                                  },
                                );
                              })
                          : ListView.builder(
                              itemCount: state.searchList.length,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (_, __) {
                                return WidgetBuilderSuralar(
                                  index: __,
                                  name: state.searchList[__],
                                  onTap: () {
                                    for (var i = 0;
                                        i < Suralar.suralar.length;
                                        i++) {
                                      if (Suralar.suralar[i]["name"] ==
                                          state.searchList[__]) {
                                        Navigator.pushNamed(
                                            context, "/suralarCon",
                                            arguments: i);
                                      }
                                    }
                                  },
                                );
                              },
                            ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
