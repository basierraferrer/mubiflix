import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: const BoxDecoration(
        color: Color(0xFF252b44),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: const TextField(
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          hintText: "Search...",
          prefix: Padding(
            padding: EdgeInsetsDirectional.only(start: 12.0),
          ),
          hintStyle: TextStyle(
            fontFamily: "Bebas",
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFFA9ADC2),
          ),
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: EdgeInsetsDirectional.only(end: 12.0),
            child: Icon(
              Icons.search,
              size: 16.0,
            ), // myIcon is a 48px-wide widget.
          ),
          suffixIconColor: Color(0xFFA9ADC2),
        ),
        style: TextStyle(
          fontFamily: "Bebas",
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFFA9ADC2),
        ),
      ),
    );
  }
}
