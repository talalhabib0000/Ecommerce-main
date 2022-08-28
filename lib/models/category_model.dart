import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: 'Magnesium+Calcium+D3',
      imageUrl:
          'https://th.bing.com/th/id/R.3cf968deea9319f21d77855dea710cc2?rik=DE%2bMNszqYqqwYA&pid=ImgRaw&r=0',
    ),
    const Category(
      name: 'Coenzyme q10 dopper hetz',
      imageUrl:
          'https://th.bing.com/th/id/R.7f22246d484ad80b2cafcbebe5e110ad?rik=VKOTasXmRZ5k%2fA&pid=ImgRaw&r=0',
    ),
    const Category(
      name: 'For Joints',
      imageUrl:
          'https://th.bing.com/th/id/R.fd637068e74c0dd5ff2f72735645261a?rik=glaybMiHwRMfBg&pid=ImgRaw&r=0',
    ),
    const Category(
      name: 'Omega-3',
      imageUrl:
          'https://th.bing.com/th/id/R.9fb5f07d90489ef55f504e5858811636?rik=CraBMp46rYrk%2fw&pid=ImgRaw&r=0&sres=1&sresct=1',
    ),
  ];
}
