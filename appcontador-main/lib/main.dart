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
      title: 'Contador de Pessoas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({ Key? key }) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  
int count = 0;
String role = "";

      void decrement(){
        setState(() {
          if(count > 0){
            count--;
          }
        });
          print(count);
      }
      void increment(){
        setState(() {
          if( count < 15){
          count++;
          }
        });
          print(count);
        }

  @override
  Widget build(BuildContext context) {

    if(count >=0 && count < 15){
      role = "Pode Entrar";
    } else {
      role = "Cheio!";
    }


    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("imagens/contadorback.jpg"),
          fit: BoxFit.cover)
        ),
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(role.toString(), style: TextStyle(fontSize: 30, color: Colors.white)),
          Text(count.toString(), style: TextStyle(fontSize: 100, color: Colors.white)),  
          Row(     
            mainAxisAlignment: MainAxisAlignment.center,      
            children: [              
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                child: Text("Saiu", style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
              
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white
                ),
                child: Text("Entrou", style: TextStyle(fontSize: 16, color: Colors.black)),
              ),
            ],
          )
        ],     
      ),
      )
    );
  }
}
