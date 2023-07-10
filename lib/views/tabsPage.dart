import 'package:flutter/material.dart';
import 'package:flutter_threads_clone/views/homePage.dart';

class TabsPage extends StatefulWidget {
  int currentTab;
  Widget currentPage = const HomePage();
  TabsPage({Key? key, this.currentTab = 0}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  void initState() {
    super.initState();
    selectTab(widget.currentTab);
  }

  void selectTab(int tabItem) {
    setState(() {
      widget.currentTab = tabItem;
      switch (tabItem) {
        case 0:
          widget.currentPage = const HomePage();
          break;
        default:
          widget.currentPage = const HomePage();
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: widget.key,
        body: widget.currentPage,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          selectedIconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          currentIndex: widget.currentTab,
          onTap: (int i) {
            selectTab(i);
          },
          items: [
            BottomNavigationBarItem(
                label: "",
                icon: Icon(
                    widget.currentTab == 0 ? Icons.home : Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(widget.currentTab == 1
                    ? Icons.search
                    : Icons.search_outlined)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(widget.currentTab == 2
                    ? Icons.post_add
                    : Icons.post_add_outlined)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(widget.currentTab == 3
                    ? Icons.favorite
                    : Icons.favorite_border)),
            BottomNavigationBarItem(
                label: "",
                icon: Icon(widget.currentTab == 4
                    ? Icons.person
                    : Icons.person_outline)),
          ],
        ),
      ),
    );
  }
}
