import 'package:astrotak/shared/app_bar_lead.dart';
import 'package:astrotak/shared/app_bar_trail.dart';
import 'package:astrotak/shared/application_bar.dart';
import 'package:astrotak/widgets/ask_question.dart';
import 'package:astrotak/widgets/dashboard/dashboard.dart';

import 'package:astrotak/widgets/reports.dart';
import 'package:astrotak/widgets/talkToAstrologer/talk_to_astrologer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _selectedIndex = 0;
  final CupertinoTabController _controller = CupertinoTabController();


  final List<Widget> tabs = [
    DashBoard(),
    TalkToAstrologer(),
    AskQuestion(),
    Reports(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoTabScaffold(
        controller: _controller,
        tabBuilder: _body,
        tabBar: _buildTabs(context),
      ),
    );
  }

  Widget _body(context, index) {
    return CupertinoTabView(
      builder: (BuildContext context) => CupertinoPageScaffold(
        navigationBar: _buildAppBar(),
        child: SafeArea(
          child: OfflineBuilder(
              connectivityBuilder: (context, connectivity, child) {
                bool connected = connectivity != ConnectivityResult.none;
                return _buildConnectionBar(connected, child);
              },
              child: tabs.elementAt(index)),
        ),
      ),
    );
  }

  CupertinoNavigationBar _buildAppBar() {
    return CupertinoNavigationBar(
      automaticallyImplyLeading: false,
      transitionBetweenRoutes: false,
      middle: AstroTakBar(),
      trailing: const AppBarTrail(),
      leading: const AppBarLead(),
      // trailing: _buildSettings(),
    );
  }

  Widget _buildConnectionBar(bool connected, Widget child) {
    return Stack(
      fit: StackFit.expand,
      children: [
        if (connected) child,
        Positioned(
          left: 0.0,
          right: 0.0,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 350),
            color: connected ? Colors.green : Colors.orange,
            height: connected ? 0 : 32,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              child: connected
                  ? const Text('Online', style: TextStyle(color: Colors.white,fontSize: 15))
                  : _buildOfflineBar(),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildOfflineBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Offline', style: TextStyle(color: Colors.white,fontSize: 15)),
        SizedBox(width: 8.0),
        SizedBox(
          width: 12.0,
          height: 12.0,
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      ],
    );
  }

  CupertinoTabBar _buildTabs(BuildContext context) {
    return CupertinoTabBar(
      backgroundColor: Colors.white,
      activeColor: Colors.orange,
      inactiveColor: Colors.grey,
      iconSize: 24,
      currentIndex: _selectedIndex,
      onTap: (int index) => _onTap(index),
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(CupertinoIcons.house_alt_fill),
        ),
        BottomNavigationBarItem(
          label: 'Talk To Astrologer',
          icon: Icon(CupertinoIcons.book),
        ),
        BottomNavigationBarItem(
          label: 'Ask Question',
          icon: Icon(CupertinoIcons.news_solid),
        ),
        BottomNavigationBarItem(
          label: 'Reports',
          icon: Icon(CupertinoIcons.alarm),
        ),
      ],
    );
  }

  void _onTap(int index) {
    print("tab index: $index");
    Navigator.of(context).popUntil((route) => route.isFirst);
    switch (index) {
      case 1:
        // BlocProvider.of<JournalBloc>(context).add(ResetJournal());
        break;
      case 2:
        // BlocProvider.of<NewsBloc>(context).add(ResetNews());
        break;
      case 3:
        // BlocProvider.of<AlertListBloc>(context).add(ResetAlerts());
        break;
      case 4:
        // BlocProvider.of<SettingBloc>(context).add(ResetPlan());
        break;
    }
  }
}
