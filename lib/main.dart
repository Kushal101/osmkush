import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:maps_open/search.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",

      routes: {
        "/home": (ctx) => MainExample(),
        "/picker-result":(ctx) =>LocationAppExample(),
        "/search":(ctx)=>SearchPage(),


        //"/adv-home": (ctx) => AdvandedMainExample(),
        // "/nav": (ctx) => MyHomeNavigationPage(
        //       map: Container(),
        //     ),
        "/second": (ctx) => Scaffold(
            body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(ctx, "/home");
                  },
                  child: const Text("another page"),
                )))
      },
    );
  }
}
