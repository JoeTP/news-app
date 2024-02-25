import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:news_application/cubit/cubit.dart';
import 'package:news_application/cubit/cubit.dart';
import 'package:news_application/widgets/item.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        List  list = NewsCubit.get(context).productsList;
        return Conditional.single(
          context: context,
          conditionBuilder: (context) => list.length > 0,
          widgetBuilder: (context) =>ListView.builder(
            itemBuilder: (context, index) => Item(data: list[index]),
            itemCount: list.length,
            physics: BouncingScrollPhysics(),
          ),
          fallbackBuilder: (context) => Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
