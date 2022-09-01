import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/cart/cart_bloc.dart';
import '../../widgets/cart_product_card.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_navbar.dart';
import '../../widgets/order_summary.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(screen: routeName),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoading) {
            return CircularProgressIndicator();
          }
          if (state is CartLoaded) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.cart.freeDeliveryString,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(),
                          elevation: 0,
                        ),
                        child: Text(
                          'Add More Items',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 400,
                    child: ListView.builder(
                        itemCount: state.cart
                            .ProductQuanity(state.cart.products)
                            .keys
                            .length,
                        itemBuilder: (BuildContext context, int index) {
                          return CartProductCard(
                            product: state.cart
                                .ProductQuanity(state.cart.products)
                                .keys
                                .elementAt(index),
                            quantity: state.cart
                                .ProductQuanity(state.cart.products)
                                .values
                                .elementAt(index),
                          );
                        }),
                  ),
                  OrderSummary(),
                ],
              ),
            );
          }
          return Text('Something went wrong');
        },
      ),
    );
  }
}
