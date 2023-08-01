class NewArrivals {
  final String imageUrl;
  final String description;
  final String price;

  NewArrivals({required this.imageUrl, required this.description, required this.price});
}


final List<NewArrivals> products = [
    NewArrivals(
      imageUrl: 'assets/images/shop-new-4.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    NewArrivals(
      imageUrl: 'assets/images/shop-new-14.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    NewArrivals(
      imageUrl: 'assets/images/shop-new-21.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    NewArrivals(
      imageUrl: 'assets/images/shop-new-22.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    NewArrivals(
      imageUrl: 'assets/images/shop-new-23.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),

    NewArrivals(
      imageUrl: 'assets/images/shop-new-22.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),
    
    // Add more products as needed
  ];