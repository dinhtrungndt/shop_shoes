import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    this.textFieldWidth = 370.0,
  });

  final double textFieldWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: textFieldWidth,
        child: const SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 15,
                child: Image(image: AssetImage("assets/Search_button.png")),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
