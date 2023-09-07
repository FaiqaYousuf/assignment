import 'package:flutter/material.dart';
import 'index/Category.dart';

List<Category> ListOfCategory = [
  Category(id: 1, title: 'HouseHold'),
  Category(id: 2, title: 'Grocery'),
  Category(id: 3, title: 'Accessories'), // New category
];


class CategoryList extends StatelessWidget {
  final List<Category> categories;
  final Function(int) onCategorySelected;

  CategoryList({
    required this.categories,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (Category category in categories)
          ElevatedButton(
            onPressed: () {
              onCategorySelected(category.id);
            },
            style: ElevatedButton.styleFrom(
              // ignore: deprecated_member_use
              primary: Colors.black, // Change button background color
              // ignore: deprecated_member_use
              onPrimary: Colors.white, // Change text color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Round the corners
              ),
            ),
            child: Text(
              category.title.toUpperCase(), // Change category title and make it uppercase
              style: TextStyle(
                fontSize: 16, // Adjust font size
                fontWeight: FontWeight.bold, // Apply bold style
              ),
            ),
          ),
      ],
    );
  }
}
