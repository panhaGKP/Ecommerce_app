import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<String> colors;
  final double rating, price;
  final bool isFavorite, isPopular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.price,
    this.isFavorite = true,
    this.isPopular = false,
  });
}

List<Product> demoProduct = [
  Product(
    images: [
      'https://img.freepik.com/free-photo/strong-man-training-gym_1303-23478.jpg?w=2000',
      'https://ae01.alicdn.com/kf/H39c56d5d83384036a14416df60a66f13E/2-Piece-Yoga-Set-Gym-Women-Sport-Suit-Sportswear-Gym-Set-Fitness-Clothes-Gym-Set-Women.jpg_Q90.jpg_.webp',
      'https://assets.vogue.com/photos/6258393df4d32274a826fb0f/1:1/w_2667,h_2667,c_limit/slide_7.jpg',
      'https://img.freepik.com/free-photo/strong-man-training-gym_1303-23478.jpg?w=2000',
    ],
    colors: [
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Colors.white",
    ],
    title: "Gym equipment \n14kg",
    price: 52.99,
    description: "For health",
    rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    images: [
      'https://ae01.alicdn.com/kf/H39c56d5d83384036a14416df60a66f13E/2-Piece-Yoga-Set-Gym-Women-Sport-Suit-Sportswear-Gym-Set-Fitness-Clothes-Gym-Set-Women.jpg_Q90.jpg_.webp'
    ],
    colors: [
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Colors.white",
    ],
    title: "Logitech Head \n2kg",
    price: 12,
    description: "12 logitech",
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    images: [
      'https://ae01.alicdn.com/kf/H39c56d5d83384036a14416df60a66f13E/2-Piece-Yoga-Set-Gym-Women-Sport-Suit-Sportswear-Gym-Set-Fitness-Clothes-Gym-Set-Women.jpg_Q90.jpg_.webp'
    ],
    colors: [
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Colors.white",
    ],
    title: "Awesome suits \n1 suit",
    price: 4.99,
    description: "description",
    rating: 4.8,
    isFavorite: false,
    isPopular: true,
  ),
  Product(
    images: [
      'https://img.freepik.com/free-photo/strong-man-training-gym_1303-23478.jpg?w=2000'
    ],
    colors: [
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Colors.white",
    ],
    title: "Logitech Head \n2kg",
    price: 90.99,
    description: "description",
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
  Product(
    images: [
      'https://ae01.alicdn.com/kf/H39c56d5d83384036a14416df60a66f13E/2-Piece-Yoga-Set-Gym-Women-Sport-Suit-Sportswear-Gym-Set-Fitness-Clothes-Gym-Set-Women.jpg_Q90.jpg_.webp'
    ],
    colors: [
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Color(0xFFF6625E)",
      "Colors.white",
    ],
    title: "Logitech Head \n2kg",
    price: 8.99,
    description: "description",
    rating: 4.8,
    isFavorite: true,
    isPopular: true,
  ),
];
