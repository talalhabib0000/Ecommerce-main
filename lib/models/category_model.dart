import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: 'Smootes',
        imageUrl:
            'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
    const Category(
        name: 'Soft Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
    const Category(
        name: 'Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
    const Category(
        name: 'Water Drink',
        imageUrl:
            'https://images.unsplash.com/photo-1647891936623-df2c0f19ca9c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80'),
  ];
}
