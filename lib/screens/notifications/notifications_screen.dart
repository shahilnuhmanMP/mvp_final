import 'package:flutter/material.dart';
import 'package:mvp/constants/const.dart';
import 'package:mvp/provider/theme_provider.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customTheme = Theme.of(context).extension<CustomTheme>()!;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: customTheme.containerBorderColor!, width: 2),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    //color: Colors.black,
                    size: 16,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: const Text(
                'Notification',
                style: appbarFont,
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 94, 94, 94)
                                .withOpacity(0.08), // Shadow color
                            spreadRadius: 4, // Spread radius
                            blurRadius: 7, // Blur radius
                            offset: const Offset(
                                0, 3), // Offset in x and y direction
                          ),
                        ]),
                    padding: const EdgeInsets.only(
                        left: 12, right: 9, bottom: 12, top: 6),
                    margin: const EdgeInsets.all(6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              radius: 12,
                              backgroundImage:
                                  AssetImage('assets/images/ai.jpeg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Araby ai',
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Text(
                          'Task planner App with clean and modern... ',
                          style: TextStyle(
                            fontSize: 11,
                            // color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          'Link Preview',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            //color: Theme.of(context).primaryColor,
                          ),
                        ),
                        const Text(
                          'www.update username home and profile, edit password',
                          style: TextStyle(
                            fontSize: 11,
                            // color: Theme.of(context).primaryColor,
                          ),
                        ),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 4,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Approve',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 6,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 4),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(12)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Deny',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )));
  }
}
