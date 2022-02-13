import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "This is the app where you can find the shortcuts key for using the Ms-word.\n\n\n\n\n\n Develop by Sandeep Pokhrel",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.teal),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Click here to Back',
                style: TextStyle(fontSize: 20),
              )),
        ],
      ),
    );
  }
}
