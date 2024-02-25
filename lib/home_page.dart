import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_application/cubit/cubit.dart';
import 'package:news_application/network/local/cache_helper.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        NewsCubit cubit = NewsCubit.get(context);

        return Scaffold(
          drawer: Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.brightness_7),
                    Switch(
                        value: cubit.darkModeSwitch,
                        onChanged: (v) {
                          cubit.changeDarkModeSwitch(v: cubit.darkModeSwitch);
                        }),
                    Icon(Icons.brightness_2_rounded),
                  ],
                )
              ],
            ),
          ),
          appBar: AppBar(
            title: Text('Browse'),
            actions: [
              // IconButton(onPressed: (){
              //   cubit.changeDarkModeSwitch();
              // }, icon: Icon(Icons.brightness_4_outlined))
            ],
          ),
          body: cubit.screens[cubit.bnbCurrentIndex],

        );
      },
    );
  }
}
