import 'package:flutter/material.dart';

import 'namedroute/namedroute.dart';

class Routegen {
  static Route<dynamic> genroute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => Firstpage(),
        );
      case '/secondpage':
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => SecondPage(
                    data: arg,
                  ));
        }
        return _error();

      default:
        return _error();
    }
  }

  static Route<dynamic> _error() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          
         child: Image.asset('assets/error.jpg'),
          
          
        ),
      );
    });
  }
}
