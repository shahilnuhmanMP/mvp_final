import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class ProjectsScreen extends StatelessWidget {
  List RandomImages = [
    'assets/images/a1ba09bb0346bae3ca48e70edba34599.jpeg',
    'assets/images/b4eff3d8d21abc32c56622f0f0f50687.png',
    'assets/images/dfb63a3acf743acb78f016547dd7b2ca.jpeg',
    'assets/images/ebe9b02a823a4a1a5d8d74b9fb46f846.jpeg'
  ];
  ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Projects',
            style: appbarFont,
          ),
        ),
        body: ListView(
          children: [
//Searchbar
            CustomSearchBar(),
//cards
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(6),
                                  //padding: EdgeInsets.all(8),
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/kudos_furniture.png'),
                                      // fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    border: Border.all(
                                        width: 0.6, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Kudos Website',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.more_horiz_rounded))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Task planner App with clean and modern... '),
                        ),
                        Padding(
                          // margin: EdgeInsets.all(7),
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 0),
                                      child: Align(
                                          widthFactor: 0.5,
                                          child: CircleAvatar(
                                            radius: 18,
                                            backgroundImage: AssetImage(
                                              RandomImages[i],
                                            ),
                                          )),
                                    )
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                radius: 22,
                                child: Text('2+'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('High Priority')
                                  ],
                                ),
                              ),
                              const Text(
                                'Pending',
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                '64%',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        LinearProgressIndicatorWidget(percentage: 0.64),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(6),
                                  //padding: EdgeInsets.all(8),
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/kudos_furniture.png'),
                                      // fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    border: Border.all(
                                        width: 0.6, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Kudos Website',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.more_horiz_rounded))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Task planner App with clean and modern... '),
                        ),
                        Padding(
                          // margin: EdgeInsets.all(7),
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 0),
                                      child: Align(
                                          widthFactor: 0.5,
                                          child: CircleAvatar(
                                            radius: 18,
                                            backgroundImage: AssetImage(
                                              RandomImages[i],
                                            ),
                                          )),
                                    )
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                radius: 22,
                                child: Text('2+'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('High Priority')
                                  ],
                                ),
                              ),
                              const Text(
                                'Work on',
                                style: TextStyle(color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                '64%',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        LinearProgressIndicatorWidget(percentage: 0.64),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(6),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(6),
                                  //padding: EdgeInsets.all(8),
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    // shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/kudos_furniture.png'),
                                      // fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50.0)),
                                    border: Border.all(
                                        width: 0.6, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Kudos Website',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            IconButton(
                                onPressed: () {
                                  //
                                },
                                icon: Icon(Icons.more_horiz_rounded))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'Task planner App with clean and modern... '),
                        ),
                        Padding(
                          // margin: EdgeInsets.all(7),
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0; i < RandomImages.length; i++)
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 0),
                                      child: Align(
                                          widthFactor: 0.5,
                                          child: CircleAvatar(
                                            radius: 18,
                                            backgroundImage: AssetImage(
                                              RandomImages[i],
                                            ),
                                          )),
                                    )
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.shade200,
                                radius: 22,
                                child: Text('2+'),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.grey, width: 0.5),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CircleAvatar(
                                      radius: 3,
                                      backgroundColor: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('High Priority')
                                  ],
                                ),
                              ),
                              const Text(
                                'Pending',
                                style: TextStyle(color: Colors.orange),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Progress',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Text(
                                '64%',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        LinearProgressIndicatorWidget(percentage: 0.64),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(248, 248, 248, 1), // background color
        borderRadius: BorderRadius.circular(15.0), // rounded corners
      
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search your task',
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LinearProgressIndicatorWidget extends StatelessWidget {
  final double percentage;

  const LinearProgressIndicatorWidget({Key? key, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child:
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          // Text(
          //   'Progress: ${(percentage * 100).toStringAsFixed(1)}%',
          //   style: TextStyle(fontSize: 20),
          // ),
          // SizedBox(height: 16.0),
          LinearProgressIndicator(
        borderRadius: BorderRadius.circular(5),
        value: percentage,
        backgroundColor: Colors.grey[300],
        color: Colors.black,
        minHeight: 6.0,
      ),
      // ],
      // ),
    );
  }
}
