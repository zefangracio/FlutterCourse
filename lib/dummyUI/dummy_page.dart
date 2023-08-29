import 'package:flutter/material.dart';
import 'package:flutter_app/dummyUI/tab_view_page.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../component/app_bar.dart';
import '../component/dummy_card.dart';
import '../component/dummy_row_card.dart';
import '../component/my_text_field.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});
  static const routeName = "./dummyUI/dummy_page";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const MyAppBar(pageTitle: "Dummy UI"),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent)),
                  onPressed: () =>
                      Navigator.of(context).pushNamed(TabViewPage.routeName),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0077B6),
                                  fontSize: 16),
                            ),
                            Text(
                              "Tab Bar, GridView, ListView",
                              style: TextStyle(
                                  color: Color(0xFF7F7F7F), fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "container and text".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF2CD483),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                const DummyCard(),
                const SizedBox(height: 8),
                Text(
                  "Column".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF2CD483),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                const Column(
                  children: [
                    DummyCard(),
                    SizedBox(
                      height: 20,
                    ),
                    DummyCard(),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "Row".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF2CD483),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      DummyRowCard(),
                      DummyRowCard(),
                      DummyRowCard(),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Button".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF2CD483),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.transparent),
                          backgroundColor:
                              const Color.fromRGBO(37, 150, 190, 0.1),
                        ),
                        onPressed: () {},
                        child: const Text("Press Me")),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Input".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF2CD483),
                      fontSize: 13,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "Email",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black)),
                        TextSpan(
                          text: " *",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFED1C2E),
                          ),
                        ),
                      ])),
                      const SizedBox(
                        height: 8,
                      ),
                      EmailMyTextField(),
                      const SizedBox(height: 8),
                      Text(
                        "image asset, sized box & expanded".toUpperCase(),
                        style: const TextStyle(
                            color: Color(0xFF2CD483),
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(20),
                                width: 229,
                                height: 119,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0xFFD9D9D9),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/briefcase.svg',
                                      semanticsLabel: 'my SVG Img',
                                      width: 85,
                                      height: 51,
                                    ),
                                    const Text("1st Image")
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                width: 119,
                                height: 119,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color(0xFFD9D9D9),
                                  ),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/briefcase.svg',
                                      semanticsLabel: 'my SVG Img',
                                      width: 85,
                                      height: 51,
                                    ),
                                    const Text("1st Image")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
