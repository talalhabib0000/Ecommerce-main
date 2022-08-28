import 'package:equatable/equatable.dart';

import 'product_model.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return 'You Have Free Delivery';
    } else {
      double missing = 30.0 - subtotal;

      return 'Add \$${missing.toStringAsFixed(2)} for FREE DELIVERY';
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  String get deliveyFeeString => deliveryFee(subtotal).toStringAsFixed(2);

  String get freeDeliveryString => freeDelivery(subtotal);

  List<Product> products = const [
    Product(
      name: 'Magnesium+Calcium+D3',
      category: 'Magnesium+Calcium+D3',
      imageUrl:
          'https://th.bing.com/th/id/R.3cf968deea9319f21d77855dea710cc2?rik=DE%2bMNszqYqqwYA&pid=ImgRaw&r=0',
      price: 32,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Coenzyme q10 dopper hetz ',
      category: 'Coenzyme q10 dopper hetz',
      imageUrl:
          'https://th.bing.com/th/id/R.7f22246d484ad80b2cafcbebe5e110ad?rik=VKOTasXmRZ5k%2fA&pid=ImgRaw&r=0',
      price: 22,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'For Joints',
      category: 'For Joints',
      imageUrl:
          'https://th.bing.com/th/id/R.fd637068e74c0dd5ff2f72735645261a?rik=glaybMiHwRMfBg&pid=ImgRaw&r=0',
      price: 10,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Omega-3',
      category: 'Omega-3',
      imageUrl:
          'https://th.bing.com/th/id/R.9fb5f07d90489ef55f504e5858811636?rik=CraBMp46rYrk%2fw&pid=ImgRaw&r=0&sres=1&sresct=1',
      price: 15,
      isRecommended: true,
      isPopular: false,
    ),
  ];

  @override
  List<Object?> get props => [];
}
