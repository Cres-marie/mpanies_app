class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.images,
  });

}

final List<Product> products = [
    Product(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      brand: 'Moisteurizer',
      category: 'Skin Care',
      images: [
        'assets/images/shop-new-23.png',
        'assets/images/shop-new-21.png',
        'assets/images/shop-new-22.png',
        'assets/images/shop-new-24.png',
        'assets/images/shop-new-14.png',
        'assets/images/shop-new-4.png',
      ]
    ),


    Product(
      id : 1,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      brand: 'Spray',
      category: 'Hair',
      images: [
        'assets/images/shop-new-23.png',
        'assets/images/shop-new-21.png',
        'assets/images/shop-new-22.png',
        'assets/images/shop-new-24.png',
        'assets/images/shop-new-14.png',
        'assets/images/shop-new-4.png',
      ]
    ),

];