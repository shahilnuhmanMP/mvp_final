import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/screens/accounts/accounts_screen.dart';
import 'package:mvp/screens/home/homescreen.dart';
import 'package:mvp/screens/home/widgets/new_task_created.dart';
import 'package:mvp/screens/projects/projects_screen.dart';
import 'package:mvp/screens/timeline/timeline_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProjectsScreen(),
    TimelineScreen(),
    AccountsScreen()
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        shape: CircleBorder(),
        onPressed: () {
          _showBottomSheet(context);
        },
        child: const Icon(Icons.add, color: Colors.white, size: 25),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.black,
          selectedFontSize: 12,
          type: BottomNavigationBarType.fixed,
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
      ),
    ));
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
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

  BottomSheetContent({required this.scrollController});

  @override
  _BottomSheetContentState createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  String selectedContainer = 'Today';

  void _onContainerTap(String container) {
    setState(() {
      selectedContainer = container;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        controller: widget.scrollController,
        child: Padding(
          padding: EdgeInsets.all(16.0),
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
                    icon: Icon(Icons.close, color: Colors.black),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
              kHeight10,
              Text(
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
                  Icon(Icons.calendar_month_outlined)
                ],
              ),
              SizedBox(height: 16.0),
              _buildDropdownField('Project'),
              SizedBox(height: 16.0),
              _buildDropdownField('Task'),
              SizedBox(height: 16.0),
              Text(
                'Task Description',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 8),
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          // hintText: 'Add description...',
                        ),
                      ),
                    ),
                    //Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
              kHeight10,
              Text('Select hours',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              kHeight10,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                // width: 120,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(23)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 185, 185, 185),
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
              Text('Task Points',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
              kHeight10,
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                // width: 120,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    //color: Colors.red,
                    borderRadius: BorderRadius.circular(23)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 185, 185, 185),
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
              SizedBox(height: 32.0),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => NewTaskCreated()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(5),
                  child: Center(
                    child: Text(
                      'Create',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8)),
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
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(color: Color.fromARGB(245, 206, 206, 195)),
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
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        SizedBox(height: 8),
        Container(
          height: MediaQuery.of(context).size.height * 0.04,
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //hintText: 'Select $label',
                  ),
                ),
              ),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ],
    );
  }

  // void _showBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     backgroundColor: Colors.transparent,
  //     builder: (BuildContext context) {
  //       return DraggableScrollableSheet(
  //         expand: false,
  //         builder: (context, scrollController) {
  //           return Container(
  //             decoration: BoxDecoration(
  //               color: Colors.white,
  //               borderRadius: BorderRadius.vertical(
  //                 top: Radius.circular(20),
  //               ),
  //             ),
  //             padding: EdgeInsets.all(16.0),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Align(
  //                   alignment: Alignment.topLeft,
  //                   child: IconButton(
  //                     icon: Icon(Icons.close_rounded),
  //                     onPressed: () {
  //                       Navigator.of(context).pop();
  //                     },
  //                   ),
  //                 ),
  //                 Text(
  //                   'New Task',
  //                   style: kHeadingFont,
  //                 ),
  //                 Row(
  //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Container(
  //                       padding: EdgeInsets.all(5),
  //                       child: Text(
  //                         'Yesterday',
  //                         style: kheading2font,
  //                       ),
  //                       decoration: BoxDecoration(
  //                           color: Colors.white,
  //                           border: Border.all(color: Colors.grey),
  //                           borderRadius: BorderRadius.circular(7)),
  //                     ),
  //                     Container(
  //                       child: Text('Today'),
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(7)),
  //                     ),
  //                     Container(
  //                       child: Text('Tomorrow'),
  //                       decoration: BoxDecoration(
  //                           borderRadius: BorderRadius.circular(7)),
  //                     ),
  //                     Icon(Icons.calendar_month_outlined)
  //                   ],
  //                 ),
  //                 Text('Project'),
  //                 TextField(
  //                   decoration: InputDecoration(labelText: 'Field 1'),
  //                 ),
  //                 SizedBox(height: 16.0),
  //                 Text('Task'),
  //                 TextField(
  //                   decoration: InputDecoration(labelText: 'Field 2'),
  //                 ),
  //                 SizedBox(height: 16.0),
  //                 Text('Task Description'),
  //                 TextField(
  //                   decoration: InputDecoration(labelText: 'Field 3'),
  //                 ),
  //                 SizedBox(height: 32.0),
  //                 ElevatedButton(
  //                   onPressed: () {
  //                     // Submit logic here
  //                   },
  //                   child: Text('Submit'),
  //                   style: ElevatedButton.styleFrom(
  //                     minimumSize: Size(double.infinity, 48),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           );
  //         },
  //       );
  //     },
  //   );
  // }
}
