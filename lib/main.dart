import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:news_application/config/theme/dark_theme.dart';
import 'package:news_application/config/theme/light_theme.dart';
import 'package:news_application/cubit/cubit.dart';
import 'package:news_application/functions/bloc_obs.dart';
import 'package:news_application/home_page.dart';
import 'package:news_application/network/local/cache_helper.dart';
import 'package:news_application/network/remote/dio_helper.dart';


//+ if main() is async
//+  WidgetsFlutterBinding.ensureInitialized(); MUST BE USED TO
//+ COMPLEATE THE AWAIT Fns

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init()
  ;
 await CacheHelper.init();
  Bloc.observer = MyBlocObserver();

  bool? isDark = CacheHelper.getData(key: 'isDark');

  runApp(MyApp(isDark!));
}

class MyApp extends StatelessWidget {
   bool isDark = true;
  MyApp(this.isDark, {super.key, });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getProductsList()..changeDarkModeSwitch(
        v: isDark
      ),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: NewsCubit.get(context)
                  .darkModeSwitch ? ThemeMode.dark : ThemeMode.light,
              home: SafeArea(
                  child: HomePage())
          );
        },
      ),
    );
  }
}
