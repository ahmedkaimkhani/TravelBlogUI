// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travel_blog_flutter/Model/travel.dart';
import 'package:travel_blog_flutter/detail.dart';
import 'package:travel_blog_flutter/widget/most_popular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return DetailPage();
          },
          ),
          );
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
           actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.menu, color: Colors.black,),
            ),
           ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Travel Blog', style: TextStyle(fontSize: 36),),
              ),
              Expanded( 
                flex: 2,
                child: TravelBlog()),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Popular', style: TextStyle(fontSize: 18),),
                    Text('View all',style: TextStyle(color: Colors.deepOrange),),
                  ],
                ),
              ),
              Expanded( 
                flex: 1,
                child: MostPopular()),
            ],
          ),
        )),
    );
  }
}