import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VisitorsItemWidget extends StatefulWidget {
  const VisitorsItemWidget({super.key});

  @override
  State<VisitorsItemWidget> createState() => _VisitorsItemWidgetState();
}

class _VisitorsItemWidgetState extends State<VisitorsItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      },
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: ColoredBox(
                    color: Colors.grey.shade100,
                    // height: 70,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                  children: [
                                    Stack(//alignment: Alignment.topLeft,
                                    
                                     children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 5),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(30),
                                          child: Image.network(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQltQfpfb_OH4uUzeUqOFguqsInW4p56onNGw&usqp=CAU",
                                            fit: BoxFit.cover,
                                            height: 45,
                                            width: 45,
                                          ),
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
                      
                      
                                      Positioned(
                                        bottom: 0.5,
                                        left: 0,
                                        right: 0,
                                        child: Container(
                                          //height: 15,
                                          width: 15,
                                          alignment: Alignment.center,
                                          //padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: Colors.lightGreen.shade200,
                                          ),
                                          child: Text("In Chat", style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400),),
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
                            
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [ 
                              Container(
                                margin: EdgeInsets.only(right: 10,),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPIXa3yGcqtyJSD4wr5fxAx3a7-wXceJX61A&usqp=CAU",
                                    height: 20, width: 20,
                              ),
                                ),
                              ),
                                        //const SizedBox(height: 5,),
                                        Container(
                                          //height: 20,
                                          //width: 20,
                                          margin: EdgeInsets.only(right: 5),
                                          padding: EdgeInsets.all(5),
                                          alignment: Alignment.center,
                                          
                                          child: const Text(
                                            "Now",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ),
                            ],)
                          ]),
                    ),
                  ),
                ),
      ),
    );
  }
}