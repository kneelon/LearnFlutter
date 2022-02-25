//https://www.youtube.com/watch?v=0Q4ZHvSx4Io
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/implement_singleton/model.dart';
import 'package:flutter_learn/implement_singleton/screen_two.dart';
import 'package:flutter_learn/implement_singleton/service_locator.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController fieldController = TextEditingController();

  //6:04
  //ModelClass modelClass = GetIt.instance.get<ModelClass>();
  ModelClass modelClass = getIt.get<ModelClass>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Screen One', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: TextFormField(
                  controller: fieldController,
                  decoration: const InputDecoration(
                    hintText: 'Input some text',
                    labelText: 'Enter text',
                  ),
                ),
              ),
              const SizedBox(height: 16.0,),
              ElevatedButton(
                child: const Text('Save Data to Singleton'),
                onPressed: (){
                  modelClass.value = fieldController.text;
                  if(kDebugMode){
                    print(modelClass.value);
                  }
                },
              ),
              const SizedBox(height: 16.0,),
              ElevatedButton(
                child: const Text('Open Screen Two'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const ScreenTwo()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

















