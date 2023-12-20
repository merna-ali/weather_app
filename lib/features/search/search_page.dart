import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search city'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              suffix: Icon(Icons.search),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            labelText: 'search',
            border: OutlineInputBorder(),hintText: 'Enter City'),
          ),
        ),
      ),
    );
  }
}
