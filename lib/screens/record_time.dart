import 'package:flutter/material.dart';

// class RecordTime extends StatelessWidget {
//   const RecordTime({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: kwhite,
//         leading: IconButton(
//           icon: Container(
//             margin: const EdgeInsets.only(left: 4, top: 10),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//             child: const Icon(Icons.arrow_back, color: Colors.black),
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         //  backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Container(
//           margin: const EdgeInsets.only(top: 10),
//           child: const Text(
//             'Record Time',
//             style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color:
//                     Colors.black), // Assuming appbarFont is defined elsewhere
//           ),
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: Icon(Icons.calendar_month_outlined, color: Colors.black),
//           ),
//         ],
//       ),
//       body: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//             child: Column(
//               children: [
//                 const Text(
//                   '11-Jun-2024',
//                   style: TextStyle(color: Color.fromRGBO(228, 192, 0, 1)),
//                 ),
//                 const SizedBox(
//                     height:
//                         30), // Assuming kHeight30 is a SizedBox with height 30
//                 Container(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
//                   decoration: const BoxDecoration(
//                       color: Color.fromRGBO(250, 250, 250, 1)),
//                   child: const Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         'Date',
//                         style: TextStyle(
//                             fontSize: 13, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'Punch in',
//                         style: TextStyle(
//                             fontSize: 13, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'Punch out',
//                         style: TextStyle(
//                             fontSize: 13, fontWeight: FontWeight.bold),
//                       ),
//                       Text(
//                         'Total Hours',
//                         style: TextStyle(
//                             fontSize: 13, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 // Expanded(
//                 //   child:
//                 ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: 20,
//                   itemBuilder: (context, index) {
//                     return const Padding(
//                       padding:
//                           EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
//                       child: Row(
//                         //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             '11-Jun',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           Text(
//                             '09:00Am',
//                             style: TextStyle(fontSize: 12),
//                             //style: TextStyle(fontSize: 13),
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                           Text(
//                             '07:00Pm',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                           SizedBox(
//                             width: 60,
//                           ),
//                           Text(
//                             '10',
//                             style: TextStyle(fontSize: 12),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//                 // ),
//               ],
//             ),
//           ),
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1), // Shadow color
//                   spreadRadius: 5, // Spread radius
//                   blurRadius: 7, // Blur radius
//                   offset: const Offset(0, 3), // Offset in x and y direction
//                 ),
//               ],
//             ),

//             // color: const Color.fromARGB(
//             //     255, 255, 255, 255), // Background color to make it distinct
//             padding: const EdgeInsets.all(16.0),
//             child: const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text('Total'),
//                 Text(
//                   '100 Hours',
//                   style: TextStyle(fontSize: 19, fontFamily: 'Poppins'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class RecordTime extends StatelessWidget {
  const RecordTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Container(
            margin: const EdgeInsets.only(left: 4, top: 10),
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
        centerTitle: true,
        title: Container(
          margin: const EdgeInsets.only(top: 10),
          child: const Text(
            'Record Time',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.calendar_today_outlined, color: Colors.black),
          ),
        ],
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 0.9,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Column(
                  children: [
                    const Text(
                      '11-Jun-2024',
                      style: TextStyle(color: Color.fromRGBO(228, 192, 0, 1)),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(250, 250, 250, 1),
                        //border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Punch in',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Punch out',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Total Hours',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text('11-Jun',
                                    style: TextStyle(fontSize: 12)),
                              ),
                              SizedBox(width: 30),
                              Expanded(
                                flex: 2,
                                child: Text('09:00 AM',
                                    style: TextStyle(fontSize: 12)),
                              ),
                              SizedBox(width: 30),
                              Expanded(
                                flex: 2,
                                child: Text('07:00 PM',
                                    style: TextStyle(fontSize: 12)),
                              ),
                              SizedBox(width: 60),
                              Expanded(
                                flex: 2,
                                child:
                                    Text('10', style: TextStyle(fontSize: 12)),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total'),
                Text(
                  '100 Hours',
                  style: TextStyle(fontSize: 19, fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
