import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });
  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommended];

  static List<Product> products = const [
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
}
