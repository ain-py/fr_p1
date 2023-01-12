import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 40,
                        child: Image.asset(
                          'assets/youtube.png',
                          height: 60,
                        ),
                      ),
                      Positioned(
                        bottom: 1.5,
                        right: 1,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 3,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  50,
                                ),
                              ),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(2, 4),
                                  color: Colors.black.withOpacity(
                                    0.3,
                                  ),
                                  blurRadius: 3,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('123434554',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text('1234556',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 64, 63, 60)))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              myTiles(
                  name: 'My Orders',
                  icon: Icons.filter_frames_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Manage Address',
                  icon: Icons.home_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'My Wallet', icon: Icons.wallet_outlined, onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Your Promo Codes',
                  icon: Icons.book_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'My Transactions',
                  icon: Icons.account_balance_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Change Language',
                  icon: Icons.language_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Change Passsword',
                  icon: Icons.key_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Refer and Earn',
                  icon: Icons.add_card_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Customer Support',
                  icon: Icons.support_agent_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(name: 'About Us', icon: Icons.info_outline, onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Contact Us',
                  icon: Icons.contact_support_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(name: 'Faqs', icon: Icons.quiz_outlined, onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Privacy Policy',
                  icon: Icons.privacy_tip_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Terms & Conditions',
                  icon: Icons.gavel_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Shipping Policy',
                  icon: Icons.privacy_tip_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Rate Us',
                  icon: Icons.star_border_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(name: 'Share', icon: Icons.share_outlined, onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Delete Account',
                  icon: Icons.delete_forever_outlined,
                  onTap: () {}),
              SizedBox(
                height: 5,
              ),
              myTiles(
                  name: 'Logout', icon: Icons.logout_outlined, onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget myTiles(
    {required String name,
    required IconData icon,
    required VoidCallback onTap}) {
  return ListTile(
    tileColor: Colors.white,
    iconColor: Colors.blueAccent,
    textColor: Colors.grey[700],
    leading: Icon(
      icon,
      //size: 30,
    ),
    title: Text(
      name,
      style: TextStyle(color: Color.fromARGB(255, 101, 101, 109)),
    ),
    onTap: onTap,
    trailing: Icon(Icons.navigate_next_outlined),
  );
}
