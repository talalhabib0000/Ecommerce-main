import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../models/category_model.dart';
import '../../models/product_model.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomeScreen(),
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Bapco App'),
      bottomNavigationBar: const customNavBar(),
      body: Column(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouelCard(category: category))
                  .toList()),
          const SectionTitle(title: 'RECOMMENDED'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList()),
          const SectionTitle(title: 'Most Popular'),
          ProductCarousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList()),
        ],
      ),
    );
  }
}
