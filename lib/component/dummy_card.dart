import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DummyCard extends StatelessWidget {
  const DummyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: const Color(0xFFD9D9D9),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/briefcase.svg',
            semanticsLabel: 'my SVG Img',
          ),
          const Expanded(
            child: Column(
              children: [
                Text(
                  "How can I be Flutter Developer Expert?",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "Jill Lepore",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        
                      ),
                    ),
                    SizedBox(height: 8, width: 5),
                    Icon(Icons.circle, size: 5, color: Color.fromARGB(150, 131, 131, 131),),
                    SizedBox(width: 5),
                    Text(
                      "23 May 23",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Icon(
                Icons.star,
                color: Color(0xFF0077B6),
                size: 20,
              ))
        ],
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   final List<Container> myList = List.generate(90, (index) {
//     return Container(
//       color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256),
//           Random().nextInt(256)),
//     );
//   });

//   MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: const Text("Grid View"),
//           ),
//           body: const Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Row(
//                 children: <Widget>[
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Text('Deliver features faster',
//                             textAlign: TextAlign.center),
//                         Icon(Icons.tiktok),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Text('Craft beautiful UIs',
//                             textAlign: TextAlign.center),
//                             Icon(Icons.add_a_photo),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: FittedBox(
//                       child: FlutterLogo(),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           )
//           // body: GridView(
//           //   padding: EdgeInsets.all(20),
//           //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           //       crossAxisCount: 4,
//           //       crossAxisSpacing: 20,
//           //       mainAxisSpacing: 10,
//           //       childAspectRatio: 3/4),
//           //   children: myList,
//           // ),
//           ),
//     );
//   }
// }
