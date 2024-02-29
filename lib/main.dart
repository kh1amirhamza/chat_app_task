import 'package:chat_app_task/logic/cubits/home_cubit.dart';
import 'package:chat_app_task/presentation/home/home_page.dart';
import 'package:chat_app_task/presentation/inbox/chatting_page.dart';
import 'package:chat_app_task/presentation/inbox/inbox_page.dart';
import 'package:chat_app_task/presentation/more/more_page.dart';
import 'package:chat_app_task/presentation/visitors/visitors_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logic/routes/routes.dart';
//import 'firebase_options.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const InitialWidget());
}

class InitialWidget extends StatefulWidget {
  const InitialWidget({super.key});

  @override
  State<InitialWidget> createState() => _InitialWidgetState();
}

class _InitialWidgetState extends State<InitialWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.onGenerateRoute,
       // initialRoute: '/inbox',
        home: MyAppPage(),
      ),
    );;
  }
}

class MyAppPage extends StatefulWidget {
  const MyAppPage({super.key});

  @override
  State<MyAppPage> createState() => _MyAppState();
}

class _MyAppState extends State<MyAppPage> {

   int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
   //ChattingPage(),
    InboxPage(),
    VisitorsPage(),
    MorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context)  {

  

    return Scaffold(
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Badge(
                label: Text('3'),
                child: Icon(Icons.chat_bubble_outline_rounded,),
              ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.group_outlined),
            label: 'Visitors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
        )
    );
  
  }
}