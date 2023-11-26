import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicine_warehouse/helper/MyDrawer.dart';
import 'package:medicine_warehouse/models/medicine_model.dart';
import 'package:medicine_warehouse/pages/OrdersPage.dart';
import 'package:medicine_warehouse/pages/notfPage.dart';
import 'package:medicine_warehouse/pages/searchPage.dart';
import 'package:medicine_warehouse/widgets/customCard.dart';
import 'package:medicine_warehouse/widgets/customCategoryCard.dart';

class HomePage extends StatefulWidget {
  static String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  var pages = [HomePage(), OrdersPage(), NotficationsPage()];

  String getTitle() {
    if (currentPageIndex == 0)
      return "Home";
    else if (currentPageIndex == 1)
      return "Orders";
    else if (currentPageIndex == 2)
      return 'Favourite';
    else
      return 'Notifications';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(FontAwesomeIcons.list), label: "Orders"),
          NavigationDestination(icon: Icon(Icons.favorite), label: "Favourite"),
          NavigationDestination(
              icon: Icon(Icons.notifications), label: "Notifications")
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),*/
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(getTitle()),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0xFF0F919E),
              Color(0xFF3AAFB8),
              Color(0xFF63CAD1),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          )),
        ),
        actions: [
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: 16),
              onPressed: () {
                Navigator.pushNamed(context, SearchPage.id);
              },
              icon: Icon(
                Icons.search,
              )),
        ],
      ),
      body: currentPageIndex != 0
          ? pages[currentPageIndex]
          : Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
              child:
                  // FutureBuilder(
                  //     //future: AllCategoriesService().getAllCateogires(),
                  //     builder: (context, snapshot) {
                  //       if (snapshot.hasData) {
                  //  List<String> categories = snapshot.data!;
                  //return
                  Expanded(
                child: GridView.builder(
                    //  itemCount: categories.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        childAspectRatio: 1.2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return CustomCategoryCard(
                          //  category: categories[index],
                          );
                    }),
              ) //;
              //  }else {
              //   return Center(child: CircularProgressIndicator());
              //}
              //  }
              //),
              ),
    );
  }
}
