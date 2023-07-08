import 'package:flutter/material.dart';
import 'package:shopping_app/models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageURl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  MealItem({
    required this.affordability,
    required this.complexity,
    required this.duration,
    required this.imageURl,
    required this.title,
  });

  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageURl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
