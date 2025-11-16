import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dailer App",
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var contactList = [
    "Amrit Marasini",
    "Bimal sharma",
    "rajesh rayamajhi",
    "indresh ",
    "harry",
  ];
  var phoneNumber = ["9088888", "12334", "45667", "2222222222", "444444"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE21717),
        title: Text("Phone Dailer App"),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactList[index]),
            subtitle: Text(phoneNumber[index]),
            trailing: IconButton(
              icon: Icon(Icons.call),
              onPressed: () {
                launchUrl("tel://${phoneNumber[index]}" as Uri);
              },
            ),
          );
        },
      ),
    );
  }
}
