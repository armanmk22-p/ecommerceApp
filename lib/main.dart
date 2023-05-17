import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Column(
          children: [
              SizedBox(
                height: 200,
                child: PageView.builder(
                    itemCount:3,
                    itemBuilder:((context,index){
                      return  Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(color: Colors.red,height: 200,),
                      );
                    })),
              )
          ],
        ),
      ),
    );
  }
}

