import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/home/widgets/task_card_widget.dart';
import 'package:mvp/screens/notifications/notifications_screen.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning, Kylie!',
                      style: TextStyle(
                          fontSize: 13, color: Color.fromRGBO(87, 87, 87, 1)),
                    ),
                    Text(
                      'Let’s Start your task',
                      style: appbarFont,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Image.asset('assets/icons/Vector.png'),
                    const SizedBox(
                      width: 4,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const NotificationsScreen();
                          }));
                        },
                        icon: const Icon(Icons.notifications_none_outlined)),
                  ],
                ),
              ),
            ],
          ),
          // const CustomSearchBar(),

          // indicatorWeight: 3,

          // controller: _tabController,
          TabBar(
            indicatorWeight: 3,
            controller: _tabController,
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
                ListView(
                  children: const [
                    TaskCardDisplayed(),
                    kHeight10,
                    TaskCardDisplayed()
                  ],
                ),
                // history tab
                ListView(
                  children: const [
                    TaskCardDisplayed(),
                    kHeight10,
                    TaskCardDisplayed()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TaskCardDisplayed extends StatelessWidget {
  const TaskCardDisplayed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).canvasColor,
        //color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08), // Shadow color
            spreadRadius: 4, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 3), // Offset in x and y direction
          ),
        ],
      ),
      child: const TaskTileWidget(
        todayTab: true,
        iconValue: Icon(Icons.done_outlined),
      ),
    );
  }
}
