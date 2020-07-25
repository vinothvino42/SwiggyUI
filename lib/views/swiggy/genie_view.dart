import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/views/swiggy/genie/genie_screen.dart';
import 'package:swiggy_ui/widgets/dotted_seperator_view.dart';

class GenieView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Genie', style: Theme.of(context).textTheme.headline4),
                  UIHelper.verticalSpaceSmall(),
                  Text(
                    'Anything you need, deliverd.\nPick-up, Drop or Buy anything,\nfrom anywhere in your city',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
              Spacer(),
              UIHelper.horizontalSpaceMedium(),
              Image.asset(
                'assets/images/delivery-man.png',
                height: 90.0,
                width: 90.0,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                child: _GenieCardView(
                  title: 'Buy\nAnything',
                  desc: 'Stationery\nMedicine\nGrocery\n& more',
                  image: 'assets/images/delivery-boy.png',
                ),
                onTap: () {},
              ),
              InkWell(
                child: _GenieCardView(
                  title: 'Pickup &\nDrop',
                  desc: 'Lunchbox\nCharger\nDocuments\nClothes',
                  image: 'assets/images/pizza-delivery-boy.png',
                ),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class _GenieCardView extends StatelessWidget {
  final String title;
  final String desc;
  final String image;

  const _GenieCardView({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 2.0,
            offset: Offset(1.0, 3.0),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style:
                Theme.of(context).textTheme.subtitle2.copyWith(fontSize: 22.0),
          ),
          UIHelper.verticalSpaceMedium(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    desc,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  UIHelper.verticalSpaceSmall(),
                  ClipOval(
                    child: Container(
                      alignment: Alignment.center,
                      color: swiggyOrange,
                      height: 25.0,
                      width: 25.0,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  UIHelper.verticalSpaceMedium(),
                ],
              ),
              UIHelper.horizontalSpaceMedium(),
              Image.asset(
                image,
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
              UIHelper.horizontalSpaceExtraSmall(),
            ],
          )
        ],
      ),
    );
  }
}
