import 'package:flutter/material.dart';
import 'models/products.dart';

class SubcategoryProvider extends ChangeNotifier {
  String _selectedSubcategory = '';
  List<ProductItem> _filteredProducts = productItems;

  String get selectedSubcategory => _selectedSubcategory;
  List<ProductItem> get filteredProducts => _filteredProducts;

  void setSelectedSubcategory(String subcategory) {
    _selectedSubcategory = subcategory;
    _filteredProducts = productItems
        .where((product) => product.subCategory == subcategory)
        .toList();
    notifyListeners();
  }
}
