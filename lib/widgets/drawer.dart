import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var imageUrl =
        "https://instagram.flhe3-2.fna.fbcdn.net/v/t51.2885-19/277757916_5061666437253918_6840228536073735946_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.flhe3-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=1MJ_KRbPfy0AX8mCjx4&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAvBBU1piadu_RuZeJ__CTDp7Vjetc-F4mRlbf2djmmqA&oe=64ED2D98&_nc_sid=8b3546";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Ammar Abid"),
                accountEmail: const Text("ammar@gmail.com"),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
