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
      appBar: AppBar(
        title: Text("Nova senha"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Digite o seu E-mail",
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
              child: Text("Retornar"),




            ),
          ],

        ),
      ),
    );
  }
}