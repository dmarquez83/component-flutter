import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/todo_list_page.dart';
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'list': (BuildContext context) => ListaPage(),
    'alert': (BuildContext context) => AlertPage(),
    'todolist': (BuildContext context) => TodoListScreen(),
    'slider': (BuildContext context) => SliderPage(),
  };
}
