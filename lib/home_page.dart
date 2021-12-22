import 'package:flutter/material.dart';

import 'contact_view.dart';
import 'package:grouped_list/grouped_list.dart';
import 'contact_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> data = [
    {
      "name": "Regan Kwame",
      "phone": "+233 273 712 181",
      "email": "kwakusiawl73@gmail.com",
      "country": "Ghana",
      "region": "Koforidua"
    },
    {
      "name": "Mariam Adamu",
      "phone": "+233 273 432 652",
      "email": "kwadwoagyei@gmail.com",
      "country": "Ghana",
      "region": "Suhum"
    },
    {
      "name": "Dede Agyakum",
      "phone": "+233 243 908 181",
      "email": "okayfm@gmail.com",
      "country": "burkina",
      "region": "Waga"
    },
    {
      "name": "Sule Mohammed",
      "phone": "+233 543 442 231",
      "email": "suleman12@gmail.com",
      "country": "Ghana",
      "region": "Eastern"
    },
    {
      "name": "Kwame Adaakwa",
      "phone": "+233 212 362 001",
      "email": "abanda21@gmail.com",
      "country": "Ghana",
      "region": "Ashanti"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: false,
            title: const Text('My Contact',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600)),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/tiles.jpg'),
                  radius: 30.0,
                ),
              )
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(90),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search by name or number',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ))),
        body: SafeArea(
          child: ListView(shrinkWrap: true, children: [
            const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Recent',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                )),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return  ListTile(onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder:(context){
                  return ContactView(contact: Contact(
                    name: "Jet li",
                    phone: "+233 273 712 181",
                    email: "fuguil73@gmail.com",
                    country: "China",
                    region: "Nungua"
                  ),
                  );
                }));
                  
                },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/tiles.jpg'),
                  ),
                  title: Text(
                    'Serwaa Trust',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text('+233 09 752 832'),
                  trailing: Icon(
                    Icons.more_horiz,
                    size: 20,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 3,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('Contact',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ),
            GroupedListView<Map<String, String>, String>(
              shrinkWrap: true,
              elements: data,
              groupBy: (element) => element['name'].toString().substring(0, 1),
              groupSeparatorBuilder: (String groupByValue) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    groupByValue,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              itemBuilder: (context, Map<String, String> element) {
                Contact contact = Contact.fromJson(element);
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ContactView(contact: contact);
                        }));
                      },
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('tiles.jpg'),
                      ),
                      title: Text(
                        '${element['name']}',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      subtitle: Text('${element['phone']}'),
                    ),
                    const Divider(),
                  ],
                );
              },
              itemComparator: (item1, item2) =>
                  item1['name']!.compareTo(item2['name']!),
              order: GroupedListOrder.ASC,
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {},
          backgroundColor: Colors.black,
        ));
  }
}
