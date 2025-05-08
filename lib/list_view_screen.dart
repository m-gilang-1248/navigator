import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  MyListView({super.key});

  final List<String> categories = [
    "All",
    "Living Room",
    "Bedroom",
    "Dining Room",
    "Kitchen"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coding Flutter - ListView"),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: [
      //     SizedBox(
      //       height: 35,
      //       child: CustomListView(
      //         categories: categories,
      //         scrollDirection: Axis.horizontal,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 200,
      //       child: CustomListView(
      //         categories: categories,
      //         scrollDirection: Axis.vertical,
      //       ),
      //     ),
      //     SizedBox(
      //       height: 200,
      //       child: CustomListView(
      //         categories: categories,
      //         scrollDirection: Axis.vertical,
      //       ),
      //     ),
      //   ],
      // ),
      // GRID VIEW BUILDER ---
      // 
      // STACK ---
      // body: const Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: Stack(
      //       clipBehavior: Clip.none,
      //       children: [
      //         Icon(
      //           Icons.shopping_cart,
      //           size: 50,
      //         ),
      //         Positioned(
      //           top: -4,
      //           right: -4,
      //           child: CircleAvatar(
      //             radius: 10,
      //             backgroundColor: Colors.red,
      //             child: Text(
      //               "1",
      //               style: TextStyle(
      //                 fontSize: 10,
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),  
      // PADDING ---
      //  body: Container(
      //   height: 500,
      //   width: 300,
      //   margin: const EdgeInsets.all(10),
      //   decoration: BoxDecoration(
      //     border: Border.all(),
      //   ),
      //   child: const Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.only(
      //           left: 20.0,
      //           top: 30,
      //           bottom: 40,
      //         ),
      //         child: Text(
      //           "Categories",
      //           style: TextStyle(
      //             fontSize: 16,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // ASPECT RATIO ---
      // body: AspectRatio(
      //   aspectRatio: 180 / 240,
      //   child: Container(
      //     color: Colors.red,
      //   ),
      // ),
      // CENTER ---
      // 
      // EXPANDED ---
      // body: Container(
      //   margin: const EdgeInsets.all(10.0),
      //   child: const Column(
      //     children: [
      //       Row(
      //         children: [
      //           Icon(
      //             Icons.arrow_back_ios,
      //           ),
      //           Expanded(
      //             child: Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: Text(
      //                 "List checklist ",
      //                 style: TextStyle(fontSize: 16),
      //               ),
      //             ),
      //           ),
      //           Icon(
      //             Icons.check,
      //             color: Colors.blue,
      //           )
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      // SIZEDBOX ---
      // body: const Padding(
      //   padding: EdgeInsets.all(20.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         "Size",
      //         style: TextStyle(
      //             fontSize: 18,
      //             color: Colors.grey,
      //             fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(
      //         height: 4,
      //       ),
      //       Text(
      //         "Height 120cm",
      //         style: TextStyle(
      //             fontSize: 16,
      //             color: Colors.grey,
      //             fontWeight: FontWeight.normal),
      //       ),
      //       SizedBox(
      //         height: 2,
      //       ),
      //       Text(
      //         "Width 80cm",
      //         style: TextStyle(
      //             fontSize: 16,
      //             color: Colors.grey,
      //             fontWeight: FontWeight.normal),
      //       ),
      //     ],
      //   ),
      // ),
      // WRAP ---
      
    );
  }
}

// class CustomListView extends StatelessWidget {
//   const CustomListView({
//     super.key,
//     required this.categories,
//     required this.scrollDirection,
//   });

//   final List<String> categories;
//   final Axis scrollDirection;

//   @override
//   Widget build(BuildContext context) {
//     // return ListView(
//     //   scrollDirection: scrollDirection,
//     //   children: List.generate(
//     //     categories.length,
//     //     (index) {
//     //       return GestureDetector(
//     //         onTap: () {},
//     //         child: AnimatedContainer(
//     //           duration: const Duration(milliseconds: 150),
//     //           decoration: BoxDecoration(
//     //             borderRadius: BorderRadius.circular(20),
//     //             color: Colors.grey,
//     //           ),
//     //           padding: const EdgeInsets.symmetric(
//     //             horizontal: 24,
//     //             vertical: 8,
//     //           ),
//     //           margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
//     //           child: Text(categories[index],
//     //               textAlign: TextAlign.center,
//     //               style: const TextStyle(
//     //                 fontSize: 12,
//     //                 color: Colors.black,
//     //                 fontWeight: FontWeight.w500,
//     //                 letterSpacing: 1,
//     //               )),
//     //         ),
//     //       );
//     //     },
//     //   ),
//     // );
//     // LIST VIEW BUILDER ---
//     // return ListView.builder(
//     //   itemCount: categories.length,
//     //   itemBuilder: (BuildContext context, int index) {
//     //     return GestureDetector(
//     //       onTap: () {},
//     //       child: AnimatedContainer(
//     //         duration: const Duration(milliseconds: 150),
//     //         decoration: BoxDecoration(
//     //           borderRadius: BorderRadius.circular(20),
//     //           color: Colors.grey,
//     //         ),
//     //         padding: const EdgeInsets.symmetric(
//     //           horizontal: 24,
//     //           vertical: 8,
//     //         ),
//     //         margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
//     //         child: Text(categories[index],
//     //             textAlign: TextAlign.center,
//     //             style: const TextStyle(
//     //               fontSize: 12,
//     //               color: Colors.black,
//     //               fontWeight: FontWeight.w500,
//     //               letterSpacing: 1,
//     //             )),
//     //       ),
//     //     );
//     //   },
//     // );
    
//   }
// } 