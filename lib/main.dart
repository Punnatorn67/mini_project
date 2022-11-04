// @dart=2.9
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/calender/calender.dart';
import 'package:todo/edit_profile/profile.dart';
import 'package:todo/info/info.dart';
import 'package:todo/login/login_register_page.dart';
import 'package:todo/page/home_page.dart';
import 'package:todo/provider/todos.dart';
import 'package:firebase_core/firebase_core.dart';

MaterialColor mycolor = MaterialColor(
  Color.fromRGBO(101, 175, 133, 1).value,
  <int, Color>{
    50: Color.fromRGBO(101, 175, 133, 0.1),
    100: Color.fromRGBO(101, 175, 133, 0.2),
    200: Color.fromRGBO(101, 175, 133, 0.3),
    300: Color.fromRGBO(101, 175, 133, 0.4),
    400: Color.fromRGBO(101, 175, 133, 0.5),
    500: Color.fromRGBO(101, 175, 133, 0.6),
    600: Color.fromRGBO(101, 175, 133, 0.7),
    700: Color.fromRGBO(101, 175, 133, 0.8),
    800: Color.fromRGBO(101, 175, 133, 0.9),
    900: Color.fromRGBO(101, 175, 133, 1),
  },
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'TaskList App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => TodosProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData(
            primarySwatch: mycolor,
            scaffoldBackgroundColor: Color(0xFFf6f5ee),
          ),
          routes: {
            '/': (context) => LoginPage(),
            '/main': (context) => HomePage(),
            '/info': (context) => Infopage(),
            '/profile': (context) => SettingsUI(),
            '/calendar': (context) => calendarpage(),
            // '/2':(context) => aftermenu(),
          },
        ),
      );
}
