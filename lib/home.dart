import 'package:flutter/material.dart';

void main() {
  runApp(CircleApp());
}

class CircleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage("https://img.freepik.com/fotos-premium/ilustracao-conceitual-de-tecnologia-de-fundo-futurista-abstrato-de-inteligencia-artificial_860978-426.jpg?w=900"),
              ),
              Text(
                "Maike Costa Silva",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                "Desenvolvimento App Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 25.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider( // linha para separar desenvolvedor de cards
                  color: Colors.deepOrange.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0
                ),

                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 25.0,
                      color: Colors.deepOrange,
                    ),
                    title: Text(
                      "+55 118578- 5845",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontFamily: "Source Sans Pro",
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric
                  (vertical: 10.0, horizontal: 25.0
                ),

                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.deepOrange,
                      size: 25.0,
                    ),
                    title: Text(
                      "admin@admin.com",
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: "Source Sans Pro",
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
                child: Text("Retornar para login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0
                  ),

                ),



              ),
            ],
          ),
        ),
      ),
    );
  }
}
