import 'package:flutter/material.dart';


void main(){
  runApp(esquecisenha());
}

class esquecisenha extends StatelessWidget {
  const esquecisenha ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String email = "";
    String senhanova = "";
    String novasenhaComfere = "";

    String confere(){
      if(senhanova == novasenhaComfere){
        return("Senha está correta");
      }else{
        return("Senha está incorreta");
      }
    }

    String validarEmail(){
      if(email.contains("@")){
        return("Email correto");
      }else{
        return("Email Incorreto");
      }
    }

    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text("Nova senha"),
        backgroundColor: Colors.deepOrange.shade700,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Digite seu E-mail",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    ),
                  ),
                ),
                onChanged: (text){
                  email = text;
                },
                onTap: (){
                  print(validarEmail());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                    labelText: "Digite sua nova Senha",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.white
                      ),
                    ),
                  ),
                  obscureText: true,
                  onChanged: (text){
                    senhanova = text;
                  },
                  onTap: (){
                    print(confere());
                  }
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Digite Novamente sua nova Senha",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    ),
                  ),
                ),
                keyboardType: TextInputType.visiblePassword,

                obscureText: true,
                onChanged: (text){
                  novasenhaComfere = text;
                },
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              print(validarEmail());
              print(confere());
            },
                child: const Text(
                  "Retornar",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.deepOrangeAccent[700]),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),




            ),
          ],

        ),
      ),
    );
  }
}