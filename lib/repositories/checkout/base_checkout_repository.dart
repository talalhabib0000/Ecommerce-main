import 'package:ecommerce/models/checkout_model.dart';


abstract class BaseCheckoutRepository {
  Future<void> addCheckout(Checkout checkout);
}