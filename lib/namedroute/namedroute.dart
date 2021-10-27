

import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('Firstpage'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go  to secondpage'),
          onPressed: () { 
            Navigator.of(context).pushNamed('/secondpage',arguments: 'routes');
            }
              
        
        ),
            ),);
    
  }
         
}
class SecondPage extends StatelessWidget {
  final String data;

  const SecondPage({ required this.data}) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(data),

            ElevatedButton(
              child: Text('Go  back'),
              onPressed: () {
                Navigator.pop(context);
                }
                  
            
            ),
          ],
        ),
      ),);
    
  }
        
}