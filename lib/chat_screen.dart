import 'package:flutter/material.dart';
import 'chat_modes.dart';
import 'drawer_screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "Telegram",
            style: TextStyle(fontSize: 18.7),
          ),
          
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: ListView.separated(
          itemBuilder: (ctx, i) {
            return ListTile(
              // dense: true,
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(models[i].imageurl),
              ),
              title: Text(models[i].name,style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text(models[i].message,),
              trailing: Text(models[i].time),

            );
          },
          separatorBuilder: (ctx, i) {
            return Divider();
          },
          itemCount: models.length),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.create, color: Colors.white),
            backgroundColor: Theme.of(context).accentColor,
            onPressed: (){
              print("FAB clicked");
            },
          ),
    );
  }
}
