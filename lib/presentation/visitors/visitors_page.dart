import 'package:chat_app_task/presentation/visitors/visitors_item_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VisitorsPage extends StatefulWidget {
  const VisitorsPage({super.key});

  @override
  State<VisitorsPage> createState() => _VisitorsPageState();
}

class _VisitorsPageState extends State<VisitorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 30, left: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.topLeft, children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      "https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
                      fit: BoxFit.cover,
                      height: 45,
                      width: 45,
                    ),
                  ),
                  Container(
                    height: 15,
                    width: 15,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                    ),
                  ),
                ]),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.manage_accounts,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child:
              const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Visitors(3)",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 10,
            ),

            VisitorsItemWidget(),
            VisitorsItemWidget(),
            VisitorsItemWidget(),


          ])),
    );
  }
}
