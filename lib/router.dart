import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class CustomRouter {
  static FluroRouter router = FluroRouter();
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          MyHomePage());
  static Handler _biographyHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          BiographyPage());
  static Handler _instrumentsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          InstrumentsPage());
  static Handler _publicationsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          PublicationsPage());
  static Handler _docsHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          DocsPage());

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
      '/instruments',
      handler: _instrumentsHandler,
    );
    router.define(
      '/publications',
      handler: _publicationsHandler,
    );
    router.define(
      '/docs',
      handler: _docsHandler,
    );
  }
}