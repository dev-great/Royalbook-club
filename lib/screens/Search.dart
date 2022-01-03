import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Search({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.purple[50].withOpacity(0.7),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black87,
            size: 25,
          ),
          hintText: "Search Books",
          hintStyle: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
