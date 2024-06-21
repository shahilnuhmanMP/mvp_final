import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

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
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
          indicatorColor: Colors.black,
          labelColor: Colors.black,
          controller: _tabController,
          labelStyle: const TextStyle(fontSize: 16),
          indicator: BoxDecoration(
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  children: [
                    Card(
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
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  children: [
                    Card(
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
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    fontWeight: FontWeight.w500, fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
