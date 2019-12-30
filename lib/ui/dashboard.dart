import 'package:flutter/material.dart';
import 'package:flutter_ui_one/widgets/dashboard_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Color(0xFFF1F1F1),
        notchMargin: 6,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark,
                  size: 25,
                ),
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 25,
                ),
                title: Text("")),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Image.asset('images/dashboard.png'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              elevation: 5,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "Search..",
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none),
              ),
            ),
            Expanded(
                flex: 2,
                child: ListView(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              DashboardButton(
                                color: Colors.red,
                                icon: Icons.account_balance,
                                buttonText: "Maintenance",
                              ),
                              DashboardButton(
                                color: Colors.teal,
                                icon: Icons.book,
                                buttonText: "Bills",
                              ),
                              DashboardButton(
                                color: Colors.purple,
                                icon: Icons.person_pin,
                                buttonText: "Inquiry",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              DashboardButton(
                                color: Colors.orange,
                                icon: Icons.cancel,
                                buttonText: "Complain",
                              ),
                              DashboardButton(
                                color: Colors.lightGreen,
                                icon: Icons.check,
                                buttonText: "Building Expenses",
                              ),
                              DashboardButton(
                                color: Colors.indigoAccent,
                                icon: Icons.phone,
                                buttonText: "Extensions",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              DashboardButton(
                                color: Colors.cyan,
                                icon: Icons.phone_in_talk,
                                buttonText: "Watchman Number",
                              ),
                              DashboardButton(
                                color: Colors.grey,
                                icon: Icons.event,
                                buttonText: "Events",
                              ),
                              DashboardButton(
                                color: Colors.red[300],
                                icon: Icons.announcement,
                                buttonText: "Others",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
