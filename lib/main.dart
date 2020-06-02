import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gnezdilov/docs.dart';
import 'package:gnezdilov/instruments.dart';
import 'package:gnezdilov/organizations.dart';
import 'package:gnezdilov/publications.dart';
import 'package:gnezdilov/router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'elements.dart';
import 'biography.dart';

void main() {
  CustomRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _navigationData = MainNavigation.navigationData;

  Widget bottomNavigation(BuildContext context) {
    var _navigationItems = List<Widget>();
    var _screenWidth = MediaQuery.of(context).size.width;
    var mq = MediaQuery.of(context);
    var _alignment = MainAxisAlignment.spaceAround;

    if (_screenWidth < 800) {
      _navigationItems.add(
        ListTile(
          title: Image.asset(
            'assets/images/slavic_pattern_h.jpg',
            fit: BoxFit.scaleDown,
          ),
        ),
      );
    }
    _navigationItems.addAll(
      _navigationData.entries.map(
        (element) => ListTile(
          title: FlatButton(
            onPressed: () => Navigator.pushNamed(context, '/${element.key}'),
            child: Text(element.value['title'],
                textAlign: TextAlign.center,
                style: GoogleFonts.ruslanDisplay(
                  fontSize: _screenWidth > 400 ? 20.0 : 16.0,
                )),
          ),
        ),
      ),
    );
    var _bottomSheetHeight = mq.size.height * 0.45;
    if (_screenWidth > 1000) {
      _bottomSheetHeight = mq.size.height * 0.3;
    } else if (_screenWidth < 600 || mq.orientation == Orientation.landscape) {
      _alignment = MainAxisAlignment.spaceBetween;
      _bottomSheetHeight = mq.orientation == Orientation.landscape
          ? mq.size.height
          : mq.size.width;
      _navigationItems.add(
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.pop(context),
          )
        ]),
      );
    }
    return BottomAppBar(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return Container(
                    height: _bottomSheetHeight,
                    child: Column(
                      mainAxisAlignment: _alignment,
                      children: _navigationItems,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget floatingHomeButton(BuildContext context) {
    var _fontSize = MediaQuery.of(context).size.width > 600 ? 20.0 : 16.0;
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pushNamed(context, '/'),
      label: Text('на главную', style: GoogleFonts.alice(fontSize: _fontSize)),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Гнездилов Александр - музыкальный мастер',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
      initialRoute: '/',
      onGenerateRoute: CustomRouter.router.generator,
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyApp().bottomNavigation(context),
      body: SingleChildScrollView(
        child: Center(
          child: LayoutBuilder(builder: (context, constraints) {
            double paddingH = constraints.maxWidth > 800 ? 60.0 : 10.0;
            return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: paddingH, vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  MainCard(constraints.maxWidth),
                  ActivityCard(constraints.maxWidth),
                  OrgsCard(constraints.maxWidth),
                  MainNavigation(constraints.maxWidth),
                  Footer(),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class BiographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title'],
            style: GoogleFonts.alice()),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double paddingH = constraints.maxWidth > 800
            ? 60.0
            : constraints.maxWidth < 400 ? 5.0 : 10.0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingH),
          child: SingleChildScrollView(child: Biography()),
        );
      }),
      bottomNavigationBar: MyApp().bottomNavigation(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}

class InstrumentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Instruments(_navigationData[_routeName]['title']);
  }
}

class PublicationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Publications(_navigationData[_routeName]['title']);
  }
}

class DocsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title']),
      ),
      body: SingleChildScrollView(child: Docs()),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}
