import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

Widget buildNavItem(IconData iconData, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Icon(iconData),
      Text(text),
    ],
  );
}

Widget buildDrawerItem(IconData iconData, String text) {
  return ListTile(
    leading: Icon(
      iconData,
      color: Color.fromARGB(255, 60, 60, 66),
    ),
    title: Text(
      text,
      style: TextStyle(color: Color.fromARGB(255, 101, 101, 109)),
    ),
    onTap: () {},
  );
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(232, 241, 238, 238),
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 50,
                child: DrawerHeader(
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Icons and stuffs'),
                ),
              ),
              buildDrawerItem(Icons.category_outlined, 'Categories'),
              buildDrawerItem(Icons.broadcast_on_personal, 'Brands'),
              buildDrawerItem(Icons.dashboard_outlined, 'My Dashboard'),
              buildDrawerItem(Icons.person_sharp, 'My Profile'),
              buildDrawerItem(Icons.card_giftcard_outlined, 'Birthday List'),
              buildDrawerItem(Icons.book_outlined, 'WishList'),
              buildDrawerItem(Icons.card_giftcard_outlined, 'Schemes'),
              buildDrawerItem(Icons.auto_graph_outlined, 'My Group PV'),
              buildDrawerItem(Icons.badge_outlined, 'My KYC'),
              buildDrawerItem(Icons.badge_outlined, 'PAN Details'),
              buildDrawerItem(Icons.badge_outlined, 'DAF Details'),
              buildDrawerItem(Icons.public_outlined, 'My Network'),
              buildDrawerItem(Icons.mode_standby_outlined, 'My Consistency'),
              buildDrawerItem(Icons.paid_outlined, 'My Funds'),
              buildDrawerItem(Icons.local_offer_outlined, 'My Voucher'),
              buildDrawerItem(Icons.currency_rupee_outlined, 'My Bonus'),
              buildDrawerItem(Icons.shopping_bag_outlined, 'My Orders'),
              buildDrawerItem(Icons.shopping_bag_outlined, 'Make Payment'),
              buildDrawerItem(Icons.cast_for_education_outlined, 'My Traning'),
              buildDrawerItem(Icons.apartment_outlined, 'Vestige Branches'),
              buildDrawerItem(Icons.assistant_outlined, 'Rocommendation'),
              buildDrawerItem(
                  Icons.person_add_outlined, 'New Member Registration'),
              buildDrawerItem(
                  Icons.credit_card_outlined, 'Distributor Id Card'),
              buildDrawerItem(Icons.group_add_outlined, 'Refer a Friend'),
              buildDrawerItem(Icons.dock_outlined, 'My Prospect'),
              buildDrawerItem(Icons.key_outlined, 'Change Password'),
              buildDrawerItem(Icons.people, 'About Us'),
              buildDrawerItem(Icons.support_agent_outlined, 'Support'),
              buildDrawerItem(Icons.share_outlined, 'Share App with Network'),
              buildDrawerItem(Icons.contact_mail_outlined, 'Contact Us'),
              buildDrawerItem(Icons.logout_outlined, 'Sign Out'),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: Color.fromARGB(255, 208, 206, 198)),
        padding: EdgeInsets.only(top: 10, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildNavItem(Icons.dashboard_outlined, 'Dashboard'),
            buildNavItem(Icons.shopping_bag_outlined, 'Shopping'),
            buildNavItem(Icons.search, 'Search'),
            buildNavItem(Icons.schema_rounded, 'Schemes'),
            buildNavItem(Icons.add_shopping_cart_outlined, 'MyCart'),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop by PV',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.cyan[300],
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '0-25',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '25-50',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '50-100',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black45,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(
                          '100+',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(height: 420, child: getItems()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget getItems() {
  return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: 4,
      itemBuilder: ((context, index) => makeItemCard(
          imgPath: 'https://picsum.photos/999?image=9',
          pv: '0.88 PV',
          itemCode: '01123AA',
          itemData: 'abcde',
          fun: () {})));
}

Widget makeItemCard(
    {required String imgPath,
    required String pv,
    required String itemCode,
    required String itemData,
    required VoidCallback fun}) {
  return GestureDetector(
    onTap: fun,
    child: Card(
      elevation: 10,
      child: Container(
        height: 195,
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 170,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 238, 250, 255)),
              child: CachedNetworkImage(
                errorWidget: (context, url, error) => Icon(Icons.error),
                imageUrl: imgPath,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pv,
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 144, 87), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Item Code: ' + itemCode,
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 144, 87), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    itemData,
                    style: TextStyle(
                        color: Color.fromARGB(255, 87, 94, 91), fontSize: 13),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
