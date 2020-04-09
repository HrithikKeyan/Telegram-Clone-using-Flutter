import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State createState() => DrawerScreenState();
}

class DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            
            accountName: new Text(
              "Karthikeyan",
              style: new TextStyle(fontSize: 15.0),
            ),
            accountEmail: new Text(
              "+91 9847562387",
              style: new TextStyle(fontSize: 12.0, color: Colors.white54),
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  "https://avatars1.githubusercontent.com/u/39880947?s=460&u=dccd0d58d1c7bea1117cc2232d1d812785ca66dd&v=4"),
            ),
          ),
          new Padding(padding: EdgeInsets.only(top:5.0)),
         new Row(
           
           children: <Widget>[
             new Padding(padding: EdgeInsets.only(left:10.0)),
             Badge(
             badgeColor: Color(0xFF4FCE5F),
             badgeContent: new Icon(Icons.done, color:Colors.white, size: 13.0,),
            
             position: BadgePosition.bottomRight(),
             
             child: new CircleAvatar(
               backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/39880947?s=460&u=dccd0d58d1c7bea1117cc2232d1d812785ca66dd&v=4"),
              
             ),),
             new Padding(padding: EdgeInsets.symmetric(horizontal: 20.0
             
             ),
             child: new Text("Karthikeyan", style: new TextStyle(fontSize: 15.0)),
             )
           ],
         ),
          DrawerListTile(
            icons: Icons.add,
            lists: "Add Account",
          ),
          new Divider(),
          DrawerListTile(
            icons: Icons.supervisor_account,
            lists: "New Group",
          ),
          DrawerListTile(
            icons: Icons.lock,
            lists: "New SecrectChat",
          ),
          DrawerListTile(
            icons: Icons.notifications,
            lists: "New Channel",
          ),
          DrawerListTile(
            icons: Icons.person,
            lists: "Contacts",
          ),
          DrawerListTile(
            icons: Icons.phone,
            lists: "Calls",
          ),
          DrawerListTile(
            icons: Icons.bookmark_border,
            lists: "Saved Messages",
          ),
          DrawerListTile(
            icons: Icons.settings,
            lists: "Settings",
          ),
          new Divider(),
          DrawerListTile(
            icons: Icons.person_add,
            lists: "Invite Friends",
          ),
          DrawerListTile(
            icons: Icons.help_outline,
            lists: "Telegram FAQ",
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData icons;
  final String lists;
  

  const DrawerListTile({this.icons, this.lists });

  @override
  Widget build(BuildContext context) {
    return ListTile(
     
      dense: true,
      leading: Icon(icons),
      title: new Text(
        lists,
        style: new TextStyle(fontSize: 15.0),
      ),
    );
  }
}
