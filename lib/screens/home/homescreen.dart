import 'package:flutter/material.dart';

import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/notifications/notifications_screen.dart';
import 'package:mvp/screens/projects/projects_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(228, 228, 228, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Good Morning, Kylie!',
                style: TextStyle(
                    fontSize: 13, color: Color.fromRGBO(87, 87, 87, 1)),
              ),
              Text(
                'Let\’s Start your task',
                style: appbarFont,
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 6),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(248, 248, 248, 232),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const NotificationsScreen();
                    }));
                  },
                  icon: const Icon(Icons.notifications_none_outlined)),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const CustomSearchBar(),
          TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            controller: _tabController,
            labelStyle: const TextStyle(fontSize: 16),
            indicator: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.black,
            ))),
            tabs: const <Widget>[
              Tab(
                text: 'Today',
              ),
              Tab(
                text: 'History',
              ),
            ],
          ),
          Expanded(
            // Wrap the TabBarView in an Expanded widget
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                //today tab
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(235, 233, 233, 1),
                  ),
                  padding: EdgeInsets.all(12),
                  child: ListView(
                    children: [
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(235, 212, 212, 210),
                                    borderRadius: BorderRadius.circular(12)),
                                //backgroundColor: Colors.grey,
                                child: const Text(
                                  'Ui Ux design',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Design Task management App ',
                                    style: kHeadingFont,
                                  ),
                                  Icon(Icons.done_outlined)
                                ],
                              ),
                              const Text(
                                'Redesign fashion app for up dribble',
                                style: TextStyle(fontSize: 12),
                              ),
                              Divider(),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Today, 10:00 am'),
                                  Text('5 hours')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      kHeight10,
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(235, 212, 212, 210),
                                    borderRadius: BorderRadius.circular(12)),
                                //backgroundColor: Colors.grey,
                                child: const Text(
                                  'Ui Ux design',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Design Task management App ',
                                    style: kHeadingFont,
                                  ),
                                  Icon(Icons.pause_circle_outline)
                                ],
                              ),
                              Text(
                                'Redesign fashion app for up dribble',
                                style: TextStyle(fontSize: 12),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Today, 10:00 am'),
                                  Text('5 hours')
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // history tab
                Container(
                  padding: EdgeInsets.all(12),
                  color: Color.fromRGBO(235, 233, 233, 1),
                  child: ListView(
                    children: [
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(235, 212, 212, 210),
                                    borderRadius: BorderRadius.circular(12)),
                                //backgroundColor: Colors.grey,
                                child: Text(
                                  'Ui Ux design',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Design Task management App ',
                                    style: kHeadingFont,
                                  ),
                                  Icon(Icons.done_outlined)
                                ],
                              ),
                              Text(
                                'Redesign fashion app for up dribble',
                                style: TextStyle(fontSize: 12),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Today, 10:00 am'),
                                  Text('5 points'),
                                  Text('5 hours')
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      kHeight10,
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(8),
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(235, 212, 212, 210),
                                    borderRadius: BorderRadius.circular(12)),
                                //backgroundColor: Colors.grey,
                                child: Text(
                                  'Ui Ux design',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Design Task management App ',
                                    style: kHeadingFont,
                                  ),
                                  Icon(Icons.done_outlined)
                                ],
                              ),
                              Text(
                                'Redesign fashion app for up dribble',
                                style: TextStyle(fontSize: 12),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Today, 10:00 am'),
                                  Text('5 points'),
                                  Text('5 hours')
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
