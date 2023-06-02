
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
      backgroundColor: Colors.white30,
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent.shade700,

      ),
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget> [
              const SizedBox(height: 100.0),
              TextFormField(
                decoration:const InputDecoration(
                    labelText: "E-mail",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  icon: Icon(
                    Icons.email,
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

                onChanged:(text){
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 100.0),

              TextFormField(
                decoration:const InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  icon: Icon(
                    Icons.password,
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
                  child: const Text("Esqueci a senha ? ",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        height: 3,
                        fontSize: 20,
                      color: Colors.white
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.deepOrangeAccent[700]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
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