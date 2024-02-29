import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InboxItemWidget extends StatefulWidget {
  const InboxItemWidget({super.key});

  @override
  State<InboxItemWidget> createState() => _InboxItemWidgetState();
}

class _InboxItemWidgetState extends State<InboxItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
              Navigator.pushNamed(context, '/chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ColoredBox(
                    color: Colors.grey.shade100,
                    // height: 70,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.yellow,
                                width: 5,
                                height: 70,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Stack(alignment: Alignment.topLeft, children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQltQfpfb_OH4uUzeUqOFguqsInW4p56onNGw&usqp=CAU",
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
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Someone",
                                        style: TextStyle(
                                            color: Colors.lightBlue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      const SizedBox(height: 5,),
                                      Text(
                                        "Testing",
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
        
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: const Text(
                                          "18:23",
                                          style: TextStyle(
                                              color: Colors.lightBlue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                            ),
                                      //const SizedBox(height: 5,),
                                      Container(
                                        //height: 20,
                                        //width: 20,
                                        margin: EdgeInsets.only(right: 10),
                                        padding: EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: const BoxDecoration(
                                          color: Colors.lightBlue,
                                          shape: BoxShape.circle
                                        ),
                                        child: const Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                          ],)
                        ]),
                  ),
                ),
      ),
    );
  }
}