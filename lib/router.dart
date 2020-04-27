import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class CustomRouter {
  static Router router = Router();
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          MyHomePage());
  static Handler _biographyHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BiographyPage());
  static Handler _activityHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          ActivityPage());
  static Handler _instrumentsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          InstrumentsPage());
  static Handler _organizationsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          OrganizationsPage());
  static Handler _publicationsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PublicationsPage());

  static void setupRouter() {
    router.define(
      '/',
      handler: _homeHandler,
    );
    router.define(
      '/biography',
      handler: _biographyHandler,
    );
    router.define(
      '/activity',
      handler: _activityHandler,
    );
    router.define(
      '/instruments',
      handler: _instrumentsHandler,
    );
    router.define(
      '/organizations',
      handler: _organizationsHandler,
    );
    router.define(
      '/publications',
      handler: _publicationsHandler,
    );
  }
}