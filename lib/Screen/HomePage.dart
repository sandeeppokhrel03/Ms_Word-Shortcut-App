import 'package:flutter/material.dart';
import 'package:ms_word_app/Screen/aboutPage.dart';
import 'package:ms_word_app/data/data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  padding: EdgeInsets.all(0),
                  color: Colors.tealAccent,
                  child: Center(
                    child: Text(
                      'MS-WORD GUIDES',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                },
                leading: Icon(Icons.home),
                title: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AboutPage();
                    },
                  ));
                },
                leading: Icon(Icons.info_outline),
                title: Text(
                  'About',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  launch("https://www.facebook.com/sundeep.pokhrel");
                },
                leading: Icon(Icons.star),
                title: Text(
                  'Rate',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              ListTile(
                onTap: () {
                  Share.share("Hi download this app for more infromation");
                },
                leading: Icon(Icons.share),
                title: Text(
                  'Share',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('MS-WORD SHORTCUTS GUIDES'),
          actions: [
            IconButton(
                iconSize: 20,
                icon: Icon(Icons.info_outline),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AboutPage();
                    },
                  ));
                }),
          ],
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 2.0,
              );
            },
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.tealAccent,
                  child: Text(
                    " ${index + 1}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(data[index]["key"]),
                subtitle: Text(data[index]["use"]),
              );
            }));
  }
}
