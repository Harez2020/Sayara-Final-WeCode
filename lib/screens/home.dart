import 'package:flutter/material.dart';
import 'package:sayaranew/screens/product_detail.dart';
import 'package:sayaranew/screens/search_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final List myImages = [
    "https://www.pngplay.com/wp-content/uploads/2/Car-Wheel-Transparent-Images.png",
    "https://www.pngplay.com/wp-content/uploads/6/Car-Engine-Background-PNG-Image.png",
    "https://res.cloudinary.com/us-auto-parts-network-inc/image/upload/d_noimage.jpg/b_rgb:FFFFFF,c_pad,dpr_auto,f_auto,h_1200,q_auto,w_1200/v1/images/set-d100105_1",
    "https://res.cloudinary.com/us-auto-parts-network-inc/image/upload/d_noimage.jpg/b_rgb:FFFFFF,c_pad,dpr_auto,f_auto,h_1200,q_auto,w_1200/v1/images/52079425ac_1",
    "https://www.pngplay.com/wp-content/uploads/6/Car-Engine-Background-PNG-Image.png",
    "https://res.cloudinary.com/us-auto-parts-network-inc/image/upload/d_noimage.jpg/b_rgb:FFFFFF,c_pad,dpr_auto,f_auto,h_1200,q_auto,w_1200/v1/images/set-d100105_1",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 90, 5, 12),
              ),
              child: Text(
                "Sayara App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            ListTile(
              title: const Text('Dashboard'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sell on Sayara'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Book your service'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Messages'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Favourites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('My Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        /* title: IconButton(onPressed: () {}, icon: const Icon(Icons.details)),*/
        toolbarHeight: 100.0,
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SearchPage())),
              icon: const Icon(Icons.search))
        ],
        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
        automaticallyImplyLeading: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 40),
        childAspectRatio: 1,
        children: List.generate(myImages.length, (index) {
          //return Container(

          return Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.white)),
            child: Image.network(
              myImages[index],
            ),
          );

          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the second screen when tapped.

                Navigator.pushNamed(context, '/product_detail.dart');
              },
              child: const Text('Launch screen'),
            ),
          );
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(255, 51, 102, 1),
        type: BottomNavigationBarType.fixed,
        //currentIndex: _currentIndex,
        //onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Booking",
            icon: Icon(Icons.book_online),
          ),
          BottomNavigationBarItem(
            label: "My Account",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}
