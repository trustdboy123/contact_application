

import 'package:flutter/material.dart';
import 'package:flutter_application_2/contact_model.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key, required this.contact}) : super(key: key);
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: Text('Contact',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600)),
          actions: const [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),
        body: ListView(children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/trust1.jpg'),
            radius: 75,
          ),
          const SizedBox(height: 20),
          Center(
            child: Text(
              contact.name,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Center(
            child: Text(
              '${contact.region},${contact.country}',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                      title: Text('Mobile',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      subtitle: Text(contact.phone),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.chat,
                                color: Colors.black,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              )),
                        ],
                      )),
                  ListTile(
                      title: Text('e-mail',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                      subtitle: Text(contact.email),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.email,
                                color: Colors.black,
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: const CircleBorder(),
                              )),
                        ],
                      )),
                  ListTile(
                    title: Text('Groups',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w600)),
                    subtitle: Text('Sei So'),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Account Linked',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ),
          Container(
              color: const Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Telegram',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    trailing: Image.asset('assets/Telegram.png'),
                  ),
                  ListTile(
                    title: Text(
                      'Whatsapp',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    trailing: Image.asset('assets/whats.png.png'),
                  )
                ],
              )),
          const Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('More Options',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
          ),
          Container(
              color: const Color(0xff9AADBE),
              child: Column(children: [
                ListTile(
                  title: Text(
                    'Share Contacts',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  
                ),
                ListTile(
                  title: Text(
                    'QR Code',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                  ),
                  
                )
              ]))
        ]));
  }
}
