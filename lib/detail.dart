import 'package:flutter/material.dart';
import 'package:travel_blog_flutter/widget/travel_blog.dart';

class DetailPage extends StatelessWidget {
  final Travel travel;
  DetailPage({required this.travel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Text('Details'),
      ),
    );
  }
}