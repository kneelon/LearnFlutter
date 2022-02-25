import 'package:flutter/material.dart';
import 'package:flutter_learn/implement_singleton/model.dart';
import 'package:flutter_learn/implement_singleton/service_locator.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  String theValue = '';

  void _displayText(){
    theValue = modelClass.value;
  }

  ModelClass modelClass = getIt.get<ModelClass>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(theValue, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
              const SizedBox(height: 18,),
              ElevatedButton(
                child: const Text('Display Value'),
                onPressed: (){
                  setState(() {
                    theValue = modelClass.value;
                    _displayText();
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
