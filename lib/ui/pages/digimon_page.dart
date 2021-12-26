import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_challenge/cubit/digimon_list_cubit.dart';
import 'package:flutter_challenge/cubit/page_cubit.dart';
import 'package:flutter_challenge/helpers/theme.dart';
import 'package:flutter_challenge/model/digimon.dart';
import 'package:flutter_challenge/ui/widget/digimon_card.dart';

class DigimonPage extends StatefulWidget {
  const DigimonPage({Key? key}) : super(key: key);

  @override
  _DigimonPageState createState() => _DigimonPageState();
}

class _DigimonPageState extends State<DigimonPage> {
  @override
  void initState() {
    setState(() {
      context.read<DigimonListCubit>().fetchDigimonList();
    });
    super.initState();
  }

  Widget _loadingPage() {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(),
        ),
        Container(
          color: Colors.black26,
        ),
        Container(
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/loading.gif",
                  width: 125,
                  height: 125,
                ),
                SizedBox(height: 35.0),
                const SizedBox(
                  width: 35.0,
                  height: 35.0,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 7.0,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget digimonList(List<Digimon> digimon) {
      return GridView.count(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        primary: true,
        padding: const EdgeInsets.all(1.0),
        crossAxisCount: 3,
        childAspectRatio: 0.85,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        children: digimon.map((e) {
          return CustomDigimonListCard(digimon: e);
        }).toList(),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text("Digimon List"),
            backgroundColor: Colors.teal,
          ),
          body: Stack(
            children: [
              BlocConsumer<DigimonListCubit, DigimonListState>(
                  listener: (context, state) {
                if (state is DigimonListError) {
                  print("Debug-state-failed  = $state");
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(state.error),
                  ));
                }
              }, builder: (context, state) {
                if (state is DigimonListSuccess) {
                  print("Debug-state-success  = $state");
                  return ListView(
                    children: [
                      Column(
                        children: [
                          digimonList(state.digimon),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      )
                    ],
                  );
                }
                return _loadingPage();
              })
            ],
          ),
        );
      },
    );
  }
}
