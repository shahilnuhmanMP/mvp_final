import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor, // background color
        borderRadius: BorderRadius.circular(15.0), // rounded corners
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your task',
                hintStyle: TextStyle(fontSize: 12),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
