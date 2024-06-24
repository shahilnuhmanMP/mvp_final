import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

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
              title: Text(
                'Notification',
                style: kheading2font,
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      margin: EdgeInsets.all(6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/ai.jpeg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Araby ai',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          kHeight10,
                          Text(
                            'Task planner App with clean and modern... ',
                            style: TextStyle(fontSize: 13),
                          ),
                          kHeight10,
                          Divider(),
                          kHeight10,
                          Text(
                            'Link Preview',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          kHeight10,
                          Text(
                            'www.update username home and profile, edit password',
                            style: TextStyle(fontSize: 13),
                          ),
                          kHeight10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 3,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Approve',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(width: 1),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Deny',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )));
  }
}
