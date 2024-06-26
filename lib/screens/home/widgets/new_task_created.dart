import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class NewTaskCreated extends StatefulWidget {
  const NewTaskCreated({super.key});

  @override
  State<NewTaskCreated> createState() => _NewTaskCreatedState();
}

class _NewTaskCreatedState extends State<NewTaskCreated> {
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
            child: Icon(Icons.arrow_back, color: Colors.black),
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
              margin: EdgeInsets.only(right: 8),
              // padding: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: Icon(Icons.more_horiz, color: Colors.black),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Project name',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Mvp Task Manager',
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(38, 38, 38, 1)),
            ),
            const Divider(),
            const Text(
              'Task details',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Design Task management App ',
              style:
                  TextStyle(fontSize: 17, color: Color.fromRGBO(38, 38, 38, 1)),
            ),
            const Divider(),
            const Text(
              'Description',
              style: TextStyle(
                  fontSize: 14, color: Color.fromRGBO(100, 100, 100, 1)),
            ),
            const Text(
              'Design Task management App  Design Task \nmanagement App  Design Task management App \nDesign Task management App  Design Task     ',
              style: TextStyle(fontSize: 15),
            ),
            const Divider(),
            Expanded(
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
      margin: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.width / 3.5,
      decoration: BoxDecoration(color: Color.fromRGBO(241, 241, 241, 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label1,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(label2)
        ],
      ),
    );
  }
}

class BottomSheetContent2 extends StatefulWidget {
  final ScrollController scrollController;

  BottomSheetContent2({required this.scrollController});

  @override
  _BottomSheetContent2State createState() => _BottomSheetContent2State();
}

class _BottomSheetContent2State extends State<BottomSheetContent2> {
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
                            BoxConstraints(), // Remove any default constraints
                        iconSize: 14,
                        icon: Icon(Icons.close, color: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  )),
              ListTile(
                leading: Icon(
                  Icons.edit_note_outlined,
                ),
                title: Text('Edit task'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.file_copy_outlined),
                title: Text('Duplicate task'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete_outline),
                title: Text('Delete task'),
              ),
              SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
