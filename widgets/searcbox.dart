import 'package:flutter/material.dart';

class SearchBox extends StatefulWidget {
  const SearchBox({super.key});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 19),
          fillColor: const Color.fromARGB(255, 236, 233, 233).withOpacity(0.5),
          filled: true,
          hintText: "Search",
          hintStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
