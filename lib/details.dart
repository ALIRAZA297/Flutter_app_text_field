import 'package:flutter/material.dart';
class details extends StatelessWidget {
  const details({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
          child: Text("Details Screen"),
        ),
      );
  }
}
