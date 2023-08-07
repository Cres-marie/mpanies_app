class Orders {
  final String imageUrl;
  final String description;
  final String price;


  Orders({required this.imageUrl, required this.description, required this.price});
}


final List<Orders> myOrders = [

  Orders(
      imageUrl: 'assets/images/shop-new-4.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),

  Orders(
      imageUrl: 'assets/images/shop-new-14.png',
      description: 'LUKE MOISTURIZING',
      price: '\$7.50'
    ),

  
];