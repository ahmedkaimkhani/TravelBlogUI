import 'package:flutter/material.dart';
import 'package:travel_blog_flutter/widget/travel_blog.dart';

import '../detail.dart';

class TravelBlog extends StatelessWidget {

  final list = Travel.generateTravel();
  final pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: list.length,
      itemBuilder: (context, index) {
      var travel = list[index];
      return GestureDetector(
        onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DetailPage(travel: travel);
          },));
          },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20, bottom: 30),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child:Image.asset(
                  travel.url,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                
                ),
              ),
            ),
            Positioned(
              bottom: 80,
              left: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(travel.location,
                    style: const TextStyle(color: Colors.white,
                    fontSize: 20),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(travel.location,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    fontSize: 30),
                    ),
                  ),
                ],
              )
              ),
              Positioned(
                bottom: 0,
                right: 30,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrange,
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    ),
                ),
                ),
          ],
        ),
      );
    },);
  }
}