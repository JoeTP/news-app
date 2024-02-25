import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_application/network/local/cache_helper.dart';
import 'package:news_application/network/remote/dio_helper.dart';
import 'package:news_application/pages/business/business_screen.dart';
import 'package:news_application/pages/science/science_screen.dart';
import 'package:news_application/pages/sports/settings_screen.dart';

part 'state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsAppInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

//+drawer
  bool darkModeSwitch = true;

  void changeDarkModeSwitch({bool? v}) {
    if(v != null)
    darkModeSwitch =! v;
    CacheHelper.setData(key: 'isDark', value: v!)
        .then((value) => emit(NewsSwitchDarkModeState()));
  }

//+ screens
  int bnbCurrentIndex = 0;
  List<BottomNavigationBarItem> bnbItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
    BottomNavigationBarItem(
        icon: Icon(Icons.sports_baseball_rounded), label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];
  List<Widget> screens = [
    ProductsScreen(),
    ScienceScreen(),
    SettingsScreen(),
    SettingsScreen()
  ];

  void changeBNBIndex(int index) {
    bnbCurrentIndex = index;
    emit(NewsChangeBNBState());
  }

  List productsList = [];

  void getProductsList() {
    emit(NewsGetLoadDataState());

    DioHelper.getData(
      url: 'products',
      // query:
      // {
      //   'country':'eg',
      //   'category':'business',
      //   'apiKey':'65f7f556ec76449fa7dc7c0069f040ca',
      // },
    ).then((value) {
      productsList = value.data['products'];
      // print(value.data);
      // print(productsList);
      emit(NewsGetDataState());
    }).catchError((e) {
      print('######### ${e.toString()}');
      emit(NewsGetDataErrorState(error: e.toString()));
    });
  }

//
// ThemeMode toggleTheme(){
//   return ;
// }
}
