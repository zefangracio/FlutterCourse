import 'package:flutter/material.dart';
import 'package:flutter_app/component/dummy_card.dart';
import 'package:flutter_app/component/dummy_row_card.dart';

class TabViewPage extends StatelessWidget {
  static const routeName = "/dummyUI/tab_view_page";

  static const List<Tab> myTab = [
    Tab(
      text: "ListView",
    ),
    Tab(
      text: "GridView",
    )
  ];
  static final List<Widget> gridList = List.generate(8, (index){
    return const DummyRowCard();
  });

  const TabViewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.white,
            title: const Text(
              "Dummy UI",
              style: TextStyle(
                color: Colors.black,
                fontSize: 23,
              ),
            ),
            bottom: const TabBar(
                labelColor: Color(0xFF0077B6),
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                unselectedLabelColor: Color(0xFF898989),
                indicator: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Color(0xFF0077B6),
                  width: 5,
                ))),
                tabs: myTab),
          ),
          body: Container(
            padding: const EdgeInsets.all(10),
            child: TabBarView(
              children: [
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return Container(
                      height: 15,
                    );
                  },
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const DummyCard();
                  },
                ),
                GridView.count(
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                  children: gridList
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
