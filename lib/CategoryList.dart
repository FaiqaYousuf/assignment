// ignore: file_names
import 'package:flutter/material.dart';
import 'index/Category.dart';


// ignore: non_constant_identifier_names
List<Category> ListOfCategory = [
  Category(id: 1, title: 'HouseHold'),
  Category(id: 2, title: 'Grocery'),
  Category(id: 3, title: 'Accessories'), // New category
];


class CategoryList extends StatelessWidget {
  final List<Category> categories;
  final Function(int) onCategorySelected;

  const CategoryList({super.key, 
    required this.categories,
    required this.onCategorySelected,
  });

  @override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal, // Enable horizontal scrolling
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (Category category in categories)
          Container(
            margin: const EdgeInsets.all(8.0), // Add margin here
            child: ElevatedButton(
              onPressed: () {
                onCategorySelected(category.id);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFFC83A), // Change button background color
                foregroundColor: Colors.black, // Change text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Round the corners
                  // Add border
                  side: const BorderSide(
                    color: Color(0xffFFC83A), // Border color
                    width: 1.0, // Border width
                  ),
                ),
                // Change the height and width of the button
                minimumSize: const Size(140, 40), // Adjust the size as needed
              ),
              child: Text(
                category.title, // Change category title and make it uppercase
                style: const TextStyle(
                  fontSize: 14, // Adjust font size
                  fontWeight: FontWeight.normal, // Apply bold style
                ),
              ),
            ),
          ),
      ],
    ),
  );
}
}
