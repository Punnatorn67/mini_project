import 'package:flutter/material.dart';
import 'package:todo/main.dart';
import 'package:todo/widget/add_todo_dialog_widget.dart';
import 'package:todo/widget/completed_list_widget.dart';
import 'package:todo/widget/todo_list_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      CompletedListWidget(),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(''),
        actions: [
          IconButton(
              icon: const Icon(Icons.apps),
              onPressed: () {
                Navigator.pushNamed(context, '/calendar');
              })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black.withOpacity(0.7),
        selectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Completed',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: mycolor,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFf6f5ee),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(101, 175, 133, 1),
              ),
              child: Text(''),
            ),
            ListTile(
              leading: const Icon(Icons.settings,
                  color: Color.fromRGBO(101, 175, 133, 1), size: 30),
              title: Text(
                'Profile',
                style: GoogleFonts.k2d(
                  color: Colors.black45,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Color.fromRGBO(101, 175, 133, 1),
                size: 30,
              ),
              title: Text(
                'Info',
                style: GoogleFonts.k2d(
                  color: Colors.black45,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/info');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color.fromRGBO(101, 175, 133, 1),
                size: 30,
              ),
              title: Text(
                'Logout',
                style: GoogleFonts.k2d(
                  color: Colors.black45,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
