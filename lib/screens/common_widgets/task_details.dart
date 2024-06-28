import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({required this.isHome, super.key});
  final bool isHome;

  @override
  State<TaskDetails> createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            onTap: () {
              _showBottomSheet(context);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              // padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: const Icon(Icons.more_horiz, color: Colors.black),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Project name',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Mvp Task Manager',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(38, 38, 38, 1)),
            ),
            const Divider(
              thickness: 0.9,
              color: Color.fromRGBO(234, 234, 234, 1),
            ),
            const Text(
              'Task details',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Design Task management App ',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Color.fromRGBO(38, 38, 38, 1)),
            ),
            const Divider(
              thickness: 0.9,
              color: Color.fromRGBO(234, 234, 234, 1),
            ),
            const Text(
              'Description',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Design Task management App  Design Task \nmanagement App  Design Task management App \nDesign Task management App  Design Task     ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
            const Divider(
              thickness: 0.9,
              color: Color.fromRGBO(234, 234, 234, 1),
            ),
            widget.isHome
                ? Expanded(
                    child: LayoutBuilder(builder: (context, constraints) {
                      int crossAxisCount = constraints.maxWidth > 600 ? 3 : 2;
                      return GridView.count(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          padding: const EdgeInsets.all(10),
                          children: const [
                            CustomTileBox(label1: '20', label2: 'Points'),
                            CustomTileBox(label1: '10', label2: 'Hours'),
                            CustomTileBox(label1: 'Approved', label2: 'Al'),
                          ]);
                    }),
                  )
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width / 5,
                            vertical: 10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Start date',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(100, 100, 100, 1)),
                                ),
                                kHeight10,
                                Text(
                                  '4Apr2024',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Start time',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromRGBO(100, 100, 100, 1)),
                                ),
                                kHeight10,
                                Text('04:45PM', style: TextStyle(fontSize: 13))
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 0.9,
                        color: Color.fromRGBO(234, 234, 234, 1),
                      )
                    ],
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
          initialChildSize: 0.37,
          expand: false,
          builder: (context, scrollController) {
            return BottomSheetContent2(scrollController: scrollController);
          },
        );
      },
    );
  }
}

class CustomTileBox extends StatelessWidget {
  final String label1, label2;
  const CustomTileBox({
    super.key,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.width / 3.5,
      decoration: const BoxDecoration(color: Color.fromRGBO(241, 241, 241, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label1,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(label2)
        ],
      ),
    );
  }
}

class BottomSheetContent2 extends StatefulWidget {
  final ScrollController scrollController;

  const BottomSheetContent2({super.key, required this.scrollController});

  @override
  _BottomSheetContent2State createState() => _BottomSheetContent2State();
}

class _BottomSheetContent2State extends State<BottomSheetContent2> {
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
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(),
                    ),
                    child: Center(
                      child: IconButton(
                        padding: EdgeInsets
                            .zero, // Ensure no padding around the icon
                        constraints:
                            const BoxConstraints(), // Remove any default constraints
                        iconSize: 14,
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  )),
              const ListTile(
                leading: Icon(
                  Icons.edit_note_outlined,
                ),
                title: Text('Edit task'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(Icons.file_copy_outlined),
                title: Text('Duplicate task'),
              ),
              const Divider(),
              const ListTile(
                leading: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                title: Text(
                  'Delete task',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
