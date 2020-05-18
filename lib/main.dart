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
    if (MediaQuery.of(context).size.width < 600)
      _navigationItems.add(
        ListTile(
          title: Image.asset(
            'assets/images/slavic_pattern_h.jpg',
            fit: BoxFit.scaleDown,
          ),
        ),
      );
    _navigationItems.addAll(
      _navigationData.entries.map(
        (element) => ListTile(
          title: FlatButton(
            onPressed: () => Navigator.pushNamed(context, '/${element.key}'),
            child: Text(element.value['title'],
                textAlign: TextAlign.center,
                style: GoogleFonts.ruslanDisplay(fontSize: 20.0)),
          ),
        ),
      ),
    );

    return BottomAppBar(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.width < 600
                        ? MediaQuery.of(context).size.height * 0.35
                        : MediaQuery.of(context).size.height * 0.25,
                    child: ListView(
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
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pushNamed(context, '/'),
      label: Text('на главную', style: GoogleFonts.alice(fontSize: 20.0)),
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
        double paddingH = constraints.maxWidth > 800 ? 60.0 : 10.0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingH, vertical: 10.0),
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
