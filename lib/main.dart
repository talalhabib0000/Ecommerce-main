import 'package:ecommerce/blocs/cart/cart_bloc.dart';
import 'package:ecommerce/blocs/category/category_bloc.dart';
import 'package:ecommerce/blocs/product/product_bloc.dart';
import 'package:ecommerce/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecommerce/config/app_router.dart';
import 'package:ecommerce/repositories/category/category_repository.dart';
import 'package:ecommerce/repositories/product/product_repository.dart';
import 'package:ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './simple_bloc_observer.dart';
import 'config/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
        BlocProvider(
            create: (_) => CategoryBloc(
                  categoryRepository: CategoryRepository(),
                )..add(LoadCategories())),
        BlocProvider(
            create: (_) => ProductBloc(
                  productRepository: ProductRepository(),
                )..add(LoadProducts()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}
