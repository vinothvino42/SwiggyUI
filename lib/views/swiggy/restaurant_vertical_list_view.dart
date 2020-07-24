import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/food_list_item_view.dart';

class RestaurantVerticalListView extends StatelessWidget {
  final String title;
  final int count;

  const RestaurantVerticalListView({
    Key key,
    @required this.title,
    @required this.count,
  })  : assert(title != '', count != 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style:
                Theme.of(context).textTheme.headline4.copyWith(fontSize: 20.0),
          ),
          UIHelper.verticalSpaceMedium(),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: count,
            itemBuilder: (context, index) => FoodListItemView(),
          )
        ],
      ),
    );
  }
}
