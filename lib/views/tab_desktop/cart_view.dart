import 'package:flutter/material.dart';
import 'package:swiggy_ui/utils/app_colors.dart';
import 'package:swiggy_ui/utils/ui_helper.dart';

class CartView extends StatelessWidget {
  const CartView({Key key, this.isTab = false}) : super(key: key);

  final bool isTab;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.grey[50],
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: isTab ? 20.0 : 40.0, top: 40.0, right: isTab ? 20.0 : 40.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Address(),
            _MyOrdersList(),
            _Checkout(),
          ],
        ),
      ),
    );
  }
}

class _Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Orders',
              style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 18.0),
            ),
            UIHelper.verticalSpaceLarge(),
            Text(
              'Delivery address',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.grey[600], fontWeight: FontWeight.w700, fontSize: 14.0),
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2/145 South Street',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Icon(Icons.keyboard_arrow_down_sharp, size: 25.0)
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Row(
              children: [
                Icon(Icons.timer_outlined, color: Colors.grey, size: 15.0),
                UIHelper.horizontalSpaceSmall(),
                Text(
                  '42 mins',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.grey,
                        fontSize: 13.0,
                      ),
                ),
                UIHelper.horizontalSpaceLarge(),
                Icon(Icons.location_on, color: Colors.grey, size: 15.0),
                UIHelper.horizontalSpaceSmall(),
                Text(
                  '4 kms',
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: Colors.grey,
                        fontSize: 13.0,
                      ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MyOrdersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: ListView(
          shrinkWrap: true,
          children: List.generate(
            5,
            (index) => Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18.0),
                    child: Image.asset(
                      'assets/images/food1.jpg',
                      height: 70.0,
                      width: 80.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  UIHelper.horizontalSpaceSmall(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Chicken Biryani \n with onion and jam',
                            style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 14.0)),
                        UIHelper.verticalSpaceMedium(),
                        Row(
                          children: [
                            Icon(Icons.close, size: 18.0),
                            UIHelper.horizontalSpaceMedium(),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey[100],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('2'),
                                  Icon(Icons.keyboard_arrow_down_outlined),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(
                    '\$42',
                    style: Theme.of(context).textTheme.headline6.copyWith(fontSize: 16.0, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listTileStyle = Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 14.0, fontWeight: FontWeight.w600);
    final amountStyle = Theme.of(context).textTheme.headline6.copyWith(fontSize: 15.0, fontWeight: FontWeight.bold);

    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          ListTile(
            dense: true,
            title: Text('Item Total', style: listTileStyle),
            trailing: Text('\$235', style: amountStyle),
          ),
          ListTile(
            dense: true,
            title: Text('Delivery Fee', style: listTileStyle),
            trailing: Text('\$235', style: amountStyle),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15.0),
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            decoration: BoxDecoration(
              border: Border.all(color: swiggyOrange),
              color: Colors.deepOrange[50],
            ),
            child: Row(
              children: [
                Expanded(child: Text('Find Promotion')),
                UIHelper.horizontalSpaceMedium(),
                SizedBox(
                  height: 38.0,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.countertops_outlined),
                    label: Text('Add Coupon'),
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.white,
                      primary: swiggyOrange,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            dense: true,
            title: Text('Total', style: listTileStyle),
            trailing: Text('\$232', style: amountStyle),
          ),
          SizedBox(
            height: 45.0,
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.countertops_outlined),
              label: Text('Checkout'),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.white,
                primary: swiggyOrange,
              ),
            ),
          )
        ],
      ),
    );
  }
}
