import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/accounts/accounts_screen.dart';
import 'package:mvp/screens/home/homescreen.dart';
import 'package:mvp/screens/projects/projects_screen.dart';
import 'package:mvp/screens/timeline/timeline_screen.dart';
import 'package:table_calendar/table_calendar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    ProjectsScreen(),
    TimelineScreen(),
    const AccountsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Stack(clipBehavior: Clip.none, children: [
        BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

          type: BottomNavigationBarType.fixed,
          //
          unselectedFontSize: 10,

          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home-2.png'),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/folder.png'),
              label: "Projects",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/calendar.png'),
              label: "Timeline",
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/icons/profile-circle.png'),
              label: "Account",
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          left: MediaQuery.of(context).size.width / 2 - 28, // Center the FAB
          child: FloatingActionButton.small(
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            shape: const CircleBorder(),
            onPressed: () {
              _showBottomSheet(context);
            },
            child: const Icon(Icons.add, color: Colors.white, size: 25),
          ),
        ),
      ]),
    ));
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          initialChildSize: 0.9,
          expand: false,
          builder: (context, scrollController) {
            return BottomSheetContent(scrollController: scrollController);
          },
        );
      },
    );
  }
}

class BottomSheetContent extends StatefulWidget {
  final ScrollController scrollController;

  const BottomSheetContent({super.key, required this.scrollController});

  @override
  _BottomSheetContentState createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  String selectedContainer = 'Today';
  bool showCalendar = false;
  DateTime _selectedDay = DateTime.now();

  void _onContainerTap(String container) {
    setState(() {
      selectedContainer = container;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        controller: widget.scrollController,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    border: Border.all(),
                    //borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    iconSize: 14,
                    icon: const Icon(Icons.close, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              kHeight10,
              const Text(
                'New Task',
                style: kHeadingFont,
              ),
              kHeight10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildContainer('Yesterday'),
                  _buildContainer('Today'),
                  _buildContainer('Tomorrow'),
                  IconButton(
                    icon: const Icon(Icons.calendar_month_outlined),
                    onPressed: () {
                      setState(() {
                        showCalendar =
                            !showCalendar; // Toggle calendar visibility
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              if (showCalendar)
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                  ),
                  child: TableCalendar(
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      setState(() {
                        _selectedDay = selectedDay;
                      });
                    },
                    rowHeight: 35,
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(2020),
                    lastDay: DateTime(2050),
                    calendarFormat: CalendarFormat.month,
                    headerStyle: const HeaderStyle(
                      titleTextStyle:
                          TextStyle(color: Colors.black, fontSize: 20),
                      formatButtonVisible: false,
                    ),
                    daysOfWeekStyle: const DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.black),
                      weekendStyle: TextStyle(color: Colors.black),
                    ),
                    calendarStyle: CalendarStyle(
                      todayDecoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                      selectedDecoration: const BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      selectedTextStyle: const TextStyle(color: Colors.white),
                      defaultTextStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                      weekendTextStyle: const TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              _buildDropdownField('Project'),
              const SizedBox(height: 16.0),
              _buildDropdownField('Task'),
              const SizedBox(height: 16.0),
              const Text(
                'Task Description',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const TextField(
                  maxLines: null,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                      border: InputBorder.none,
                      hintText: 'Add description...',
                      contentPadding: EdgeInsets.zero),
                ),
              ),
              kHeight10,
              const Text('Select hours',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              kHeight10,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                // width: 120,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(23)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 185, 185, 185),
                      radius: 12,
                      child: Text(
                        '-',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 12,
                        child: Text(
                          '+',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              kHeight10,
              const Text('Task Points',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              kHeight10,
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                // width: 120,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(23)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 185, 185, 185),
                      radius: 12,
                      child: Text(
                        '-',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      '2',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 12,
                        child: Text(
                          '+',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              kHeight10,
              const SizedBox(height: 32.0),
              GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('New Task Created'),
                    ),
                  );
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => NewTaskCreated()));
                },
                child: Container(
                  width: 311,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text(
                      'Create',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String text) {
    bool isSelected = selectedContainer == text;
    return GestureDetector(
      onTap: () => _onContainerTap(text),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: const Color.fromARGB(245, 206, 206, 195)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //hintText: 'Select $label',
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_down_outlined),
            ],
          ),
        ),
      ],
    );
  }
}
