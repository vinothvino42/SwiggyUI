import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/indian_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

import 'indian_delight_screen.dart';

class IndianFoodView extends StatelessWidget {
  final restaurants = IndianFood.getIndianRestaurants();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 150.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) => InkWell(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    restaurants[index].image,
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                UIHelper.verticalSpaceExtraSmall(),
                Text(
                  restaurants[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Colors.grey[700]),
                )
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => IndianDelightScreen(),
              ),
            );
          },
        ),
      ),
    );
  }
}
