import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Search for products",
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
          ),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                children: [
                  Image(image: AssetImage("assets/home/button_search.png")),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                    child: Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
