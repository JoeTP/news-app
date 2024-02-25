import 'package:flutter/material.dart';
import 'package:news_application/config/variables.dart';
import 'package:news_application/widgets/reusable/rating_stars.dart';

class Item extends StatelessWidget {
  final Map<String, dynamic> data;

  Item({Key? key, required this.data}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: Dim.screenWidth,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(Dim.r15 / 2),
            border: Border.all(width: 2, color: Colors.white)),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(Dim.r15 / 2),
                  image: DecorationImage(
                      image: NetworkImage(data['thumbnail']),
                      fit: BoxFit.cover),
                  border: Border.all(color: Colors.black26, width: 2)),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(data['title']),
                    Expanded(
                      child: Container(
                        // height: 60,
                        // color: Colors.red,
                        child: Text(
                          data['description'],
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 11,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    RatingStars(rating: data['rating'].toDouble() ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20),
                  Text('Price'),
                  Text('\$${data['price'].toString()}'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
