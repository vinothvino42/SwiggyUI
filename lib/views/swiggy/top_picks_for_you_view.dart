import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/top_picks_food.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class TopPicksForYouView extends StatelessWidget {
  final foods = TopPicksFood.getTopPicksfoods();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.thumb_up, size: 20.0),
              UIHelper.horizontalSpaceSmall(),
              Text(
                'Top Picks For You',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontSize: 20.0),
              )
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          Container(
            height: 175.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.all(10.0),
                width: 100.0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      child: Image.asset(
                        foods[index].image,
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    UIHelper.verticalSpaceSmall(),
                    Flexible(
                      child: Text(
                        foods[index].name,
                        style: Theme.of(context).textTheme.subtitle2.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      foods[index].minutes,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.grey[700],
                            fontSize: 13.0,
                          ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
