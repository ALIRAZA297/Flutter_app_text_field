import 'package:flutter/material.dart';
import 'package:log_in_form/details.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _productName;
  final _productController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _productController.addListener(_updateText);
  }
    void _updateText(){
      setState(() {
        _productName= _productController.text;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
        title: const Text("Form"),
    centerTitle: true,
        ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller:_productController,
              decoration: InputDecoration(
                labelText: 'Product Name',
                prefixIcon: Icon(Icons.verified_user_outlined),
                border: OutlineInputBorder(),
              ),
            ),
            Text("Product name is ${_productController.text}"),
          ],
        ),
      )
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
        child: Text("Click Me".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50),
        ),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return details();
          },),
          );
        },
      );
  }
}
