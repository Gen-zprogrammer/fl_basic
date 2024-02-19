import 'package:flutter/material.dart';
import 'package:flutter_basic/appbar_sliver.dart';
import 'package:flutter_basic/bottom_navbar.dart';
import 'package:flutter_basic/bottom_navbar_items.dart';
import 'package:flutter_basic/container_widget.dart';
import 'package:flutter_basic/drawer.dart';
import 'package:flutter_basic/floatingaction_button.dart';
import 'package:flutter_basic/gridview.dart';
import 'package:flutter_basic/images.dart';
import 'package:flutter_basic/layout.dart';
import 'package:flutter_basic/layout_aspect.dart';
import 'package:flutter_basic/layout_stack.dart';
import 'package:flutter_basic/listview.dart';
import 'package:flutter_basic/named_route_pass_arguments.dart';
import 'package:flutter_basic/page_route.dart';
import 'package:flutter_basic/statefull.dart';
import 'package:flutter_basic/tab_bar.dart';
import 'package:flutter_basic/textfield.dart';
import 'package:flutter_basic/widget_intro.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetIntroduction(),
    ),
  );
}
