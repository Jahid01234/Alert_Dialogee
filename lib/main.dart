import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Button',
        home: MyHomePage(),
        debugShowCheckedModeBanner: false
    );
  }
}

MySnackBar(message, context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

MyAlertDiolog(context){

  return showDialog(context: context,
      builder: (BuildContext context){
        return Expanded(

          child: AlertDialog(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(fontWeight: FontWeight.bold),
            title: Text("Alert...!!"),
            content: Text("Do you want deleted") ,
            actions: [
              TextButton(onPressed: (){
                MySnackBar("Delete Success", context);
                Navigator.of(context).pop();
              },

                child: Text("Yes", style: TextStyle(  color: Colors.deepOrange),),

              ),
              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No", style: TextStyle(  color: Colors.purpleAccent))),

            ],
          ),

        );

      }
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text("Flutter Alert Dialog"),
          centerTitle: true
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){MyAlertDiolog(context);},child: Text("Click me"),),
      ),
    );
  }

}
