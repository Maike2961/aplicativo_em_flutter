
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String email = "";
    String senha = "";

   /* void Entrar(){
      if(email.contains("@") && senha.isNotEmpty){
        CircleApp();
      }else{
        print ("Email ou Senha está incorretos");
      }
    } */

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,

      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget> [
            const SizedBox(height: 100.0),
            TextFormField(
              decoration:const InputDecoration(
                  hintText: "E-mail"
              ),
              onChanged:(text){
                email = text;
              },
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 100.0),

            TextFormField(
              decoration:const InputDecoration(
                  hintText: "Senha"
              ),
              obscureText: true,
              onChanged:(text){
                senha = text;
              },
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/novasenha");
                },
                child: const Text("Esqueci a senha",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      height: 3,
                      fontSize: 20
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100.0,),
            SizedBox(
              height: 44.0,
              child: ElevatedButton(
                onPressed: (){
                  print("Email $email");
                  print("Email $senha");
                  if(email.contains("@") && senha.isNotEmpty) {
                      Navigator.pushNamed(context, "/home");
                  }else{
                    print("Email ou senha incorretos tente novamente");
                  }
                },
                child: const Text(
                  "Entrar",
                  style: TextStyle(
                    fontSize: 18.0,

                    color: Colors.white,
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