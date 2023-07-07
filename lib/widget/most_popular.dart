import 'package:flutter/material.dart';
import 'package:travel_blog_flutter/widget/travel_blog.dart';

class MostPopular extends StatelessWidget {

  final list = Travel.generateMostPopular ();



  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var travel = list[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                travel.url,
                width: 140,
                fit: BoxFit.cover,
                ),
            ),
            Positioned(
              bottom: 20,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Text(travel.location,
                    style: const TextStyle(color: Colors.white,
                    fontSize: 15),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(travel.name,
                    style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    ),
                  )
                ],
              )
              ),
          ],
        );
      }, 
      separatorBuilder: (_, index) => SizedBox(width: 15 ,), 
      itemCount: list.length,
      );
  }
}