import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gnezdilov/router.dart';
import 'elements.dart';

void main() {
  CustomRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget floatingHomeButton(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pushNamed(context, '/'),
      label: Text('На главную'),
      icon: Icon(FontAwesomeIcons.home),
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MainCard(),
            MainNavigation(),
          ],
        ),
      ),
    );
  }
}

class BiographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Биография'),
      ),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title']),
      ),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}

class InstrumentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title']),
      ),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}

class OrganizationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title']),
      ),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}

class PublicationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _navigationData = MainNavigation.navigationData;
    final _routeName = ModalRoute.of(context).settings.name.replaceAll('/', '');
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationData[_routeName]['title']),
      ),
      floatingActionButton: MyApp().floatingHomeButton(context),
    );
  }
}
