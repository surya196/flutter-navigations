import 'package:flutter/material.dart';
import 'package:widgets/route.dart';

import 'namedroute/namedroute.dart';

void main() => runApp(MaterialApp(home: Firstpage(), 


initialRoute: '/',
onGenerateRoute: Routegen.genroute,
  
  

routes: {
      'secondpage': (context) => SecondPage(
            data: 'Data',
          )
    }
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: double.infinity,
            color: Colors.lightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/flutterimg2.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Flutter Navigation & Routes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MainPage'),
        ),
        body: Center(
            child: ElevatedButton(
                child: Text('Go to Second Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Secondpage();
                      },
                    ),
                  );
                })));
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: ElevatedButton(
            child: Text('Go  back'),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
