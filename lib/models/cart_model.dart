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
      name: 'Soft Drink #1',
      category: 'Smootes',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #2',
      category: 'Smootes',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Soft Drink #3',
      category: 'Smootes',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #2',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #4',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Soft Drink #3',
      category: 'Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #4',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: false,
      isPopular: false,
    ),
    Product(
      name: 'Soft Drink #5',
      category: 'Water Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
  ];

  @override
  List<Object?> get props => [];
}
