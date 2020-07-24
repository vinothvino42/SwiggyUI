import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class PopularCategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Popular Categories',
            style:
                Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
          ),
          UIHelper.verticalSpaceMedium(),
          Container(
            alignment: Alignment.center,
            height: 140.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 140.0,
                  width: 80.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Container(
                          height: 60.0,
                          color: Colors.grey[200],
                        ),
                      ),
                      Positioned(
                        top: 20.0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/food4.jpg',
                              height: 60.0,
                              width: 40.0,
                              fit: BoxFit.cover,
                            ),
                            UIHelper.verticalSpaceSmall(),
                            Flexible(
                              child: Text(
                                'Cold\nBeverages',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
