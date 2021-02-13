import 'package:flutter/material.dart';
import 'package:swiggy_ui/models/tab_desktop/order_menu.dart';
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
        color: Colors.white,
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: isTab ? 20.0 : 40.0, top: 40.0, right: isTab ? 20.0 : 40.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _UserHeader(),
            _MyOrdersList(),
            _Checkout(),
          ],
        ),
      ),
    );
  }
}

class _UserHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.grey[100],
                    ),
                    height: 50.0,
                    width: 50.0,
                    child: Icon(
                      Icons.notifications_outlined,
                    ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  ClipOval(
                    child: Image.asset(
                      'assets/images/user.jpg',
                      height: 50.0,
                      width: 50.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vinoth',
                        style:
                            Theme.of(context).textTheme.headline6.copyWith(fontSize: 17.0, fontWeight: FontWeight.bold),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        'User',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.grey, fontSize: 13.0),
                      ),
                    ],
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Icon(Icons.keyboard_arrow_down_outlined),
                ],
              ),
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
    final cartItems = OrderMenu.getCartItems();

    return Expanded(
      flex: 4,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Order Menu', style: Theme.of(context).textTheme.headline6),
                Spacer(),
                Text('See all', style: Theme.of(context).textTheme.subtitle1.copyWith(color: swiggyOrange)),
              ],
            ),
            UIHelper.verticalSpaceSmall(),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: List.generate(
                  cartItems.length,
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
                            cartItems[index].image,
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
                              Text(cartItems[index].title,
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
                                        Text('${cartItems[index].quantity}'),
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
                          'Rs ${cartItems[index].price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontSize: 16.0, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
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
            trailing: Text('Rs 235', style: amountStyle),
          ),
          ListTile(
            dense: true,
            title: Text('Delivery Fee', style: listTileStyle),
            trailing: Text('Rs 305', style: amountStyle),
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
                      elevation: 0.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            dense: true,
            title: Text('To Pay', style: listTileStyle),
            trailing: Text('Rs 540', style: amountStyle),
          ),
          UIHelper.verticalSpaceMedium(),
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
