import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
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
                ]),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            margin: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "More",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Automation",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: const BorderRadius.all(),
                          color: Colors.grey.shade100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.lightBlue),
                                  child: const Icon(
                                    Icons.track_changes,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Chatbots",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.lightBlue),
                                  child: const Icon(
                                    Icons.chat_bubble_outline_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Auto Messages",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            
          
            const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Personal",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: const BorderRadius.all(),
                          color: Colors.grey.shade100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.amber),
                                  child: const Icon(
                                    Icons.electric_bolt,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Shortcuts",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.teal),
                                  child: const Icon(
                                    Icons.contact_phone_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Contacts",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                    
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.lightGreen),
                                  child: const Icon(
                                    Icons.folder,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Properties",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
                    
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.red),
                                  child: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Notifications",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                  ],
                ),
              ),
            
          
          
          
            
            const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "General",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding:  EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: const BorderRadius.all(),
                          color: Colors.grey.shade100),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blue),
                                  child: const Icon(
                                    Icons.mail_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Chat Box",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.pink),
                                  child: const Icon(
                                    Icons.card_travel,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Tags",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                    
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blue.shade900),
                                  child: const Icon(
                                    Icons.devices_other,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Others",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
                    
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.grey.shade300,
                      height: 1,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          //borderRadius: BorderRadius.circular(15),
                          color: Colors.grey.shade100),
                      child: Row( 
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.red),
                                  child: const Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Notifications",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.grey.shade500,
                              size: 35,
                            )
                          ]),
                    ),
          
          
                  ],
                ),
              ),
            
            
            ]),
          ),
        ));
  }
}
