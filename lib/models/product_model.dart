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
}
