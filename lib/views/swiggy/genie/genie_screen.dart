import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/genie.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';
import 'package:swiggy_ui/widgets/custom_divider_view.dart';

class GenieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final services = Genie.getGenieServices();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            color: Colors.indigo,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                UIHelper.verticalSpaceMedium(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Genie',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Colors.white),
                        ),
                        UIHelper.horizontalSpaceSmall(),
                        Image.asset(
                          'assets/images/delivery-boy.png',
                          height: 50.0,
                          width: 50.0,
                        )
                      ],
                    ),
                    UIHelper.verticalSpaceExtraSmall(),
                    Text(
                      'Anything you need, delivered',
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.grey[200],
                            fontSize: 17.0,
                          ),
                    )
                  ],
                ),
                UIHelper.verticalSpaceMedium(),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _HeaderView(
                        title: 'Pickup or Drop any items',
                        buttonTitle: 'ADD PICKUP DROP DETAILS',
                      ),
                      CustomDividerView(dividerHeight: 3.0),
                      UIHelper.verticalSpaceMedium(),
                      Text(
                        'Some things we can pick or drop for you',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 14.0),
                      ),
                      UIHelper.verticalSpaceMedium(),
                      Container(
                        height: 120.0,
                        child: ListView.builder(
                          itemCount: services.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                height: 60.0,
                                width: 60.0,
                                margin: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Colors.white,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 3.0,
                                      spreadRadius: 2.0,
                                    )
                                  ],
                                ),
                                child: Container(
                                  height: 30.0,
                                  width: 30.0,
                                  padding: const EdgeInsets.all(30.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color: Colors.red,
                                  ),
                                  // child: Image.asset(
                                  //   services[index].image,
                                  //   fit: BoxFit.contain,
                                  // ),
                                ),
                              ),
                              Text(
                                services[index].title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(fontSize: 13.5),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                UIHelper.verticalSpaceMedium(),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: _HeaderView(
                    title: 'Buy Anything from any store',
                    buttonTitle: 'ADD PICKUP DROP DETAILS',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeaderView extends StatelessWidget {
  final String title;
  final String buttonTitle;

  const _HeaderView({
    Key key,
    @required this.title,
    @required this.buttonTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pickup or Drop any items',
          style: Theme.of(context).textTheme.headline6,
        ),
        UIHelper.verticalSpaceMedium(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          height: 50.0,
          width: double.infinity,
          child: RaisedButton(
            color: darkOrange,
            child: Text(
              'ADD PICKUP DROP DETAILS',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.white, fontSize: 16.0),
            ),
            onPressed: () {},
          ),
        ),
        UIHelper.verticalSpaceMedium(),
      ],
    );
  }
}
