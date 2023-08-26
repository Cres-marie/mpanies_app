
class ProductItem {
  final int id;
  final String title;
  final String description;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String category;
  final String subCategory;
  final String images;
  final List<String> slideImages;

  ProductItem({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.category,
    required this.subCategory,
    required this.images,
    required this.slideImages
  });

}

final List<ProductItem> productItems = [

  

    ProductItem(
      id : 1,
      title: 'MakeUp Brushes',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      category: 'Home',
      subCategory: 'Moisteurizer',
      images: 'assets/images/makeup1.jpg',
      slideImages: [
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
    ],
  ),

    ProductItem(
      id : 2,
      title: 'MakeUp Brushes',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      category: 'Trending',
      subCategory: 'Moisteurizer',
      images: 'assets/images/makeup1.jpg',
      slideImages: [
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
    ],
  ),



    ProductItem(
      id : 3,
      title: 'MakeUp Brushes',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      category: 'Skin Care',
      subCategory: 'Moisteurizer',
      images: 'assets/images/makeup1.jpg',
      slideImages: [
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
      'assets/images/makeup1.jpg',
    ],
  ),


    ProductItem(
      id : 4,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 0,
      subCategory: 'cleanser',
      category: 'Hair',
      images: 'assets/images/shop-new-4.png',
      slideImages: [
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
      'assets/images/shop-new-4.png',
    ],
    ),

    ProductItem(
      id : 5,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 18,
      subCategory: 'Spray',
      category: 'Nails',
      images: 'assets/images/shop-new-14.png',
      slideImages: [
      'assets/images/shop-new-14.png',
      'assets/images/shop-new-14.png',
      'assets/images/shop-new-14.png',
    ],
    ),

    ProductItem(
      id : 6,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 21,
      subCategory: 'Sunscreen',
      category: 'Body Care',
      images: 'assets/images/shop-new-24.png',
      slideImages: [
      'assets/images/shop-new-24.png',
      'assets/images/shop-new-24.png',
      'assets/images/shop-new-24.png',
    ],
    ),

    ProductItem(
      id : 7,
      title: 'LUKE MOISTURIZING',
      description: 'Our products are the best',
      price: 750.0,
      discountPercentage: 20,
      rating: 4,
      stock: 2,
      subCategory: 'Spray',
      category: 'Make Up',
      images: 'assets/images/shop-new-21.png',
      slideImages: [
      'assets/images/shop-new-21.png',
      'assets/images/shop-new-21.png',
      'assets/images/shop-new-21.png',
    ],
    ),

    

];