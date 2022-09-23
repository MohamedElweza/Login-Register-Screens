
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'SignUp.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Appbar(),
         const SizedBox(height: 90,),
            const Text(
              "LOGIN",
              style: TextStyle(
                color: Color(0xff3EECBC),
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
              ),
              const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: 
              InputEmail(),
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: InputPass(),
            ),
            const SizedBox(height: 20,),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              TextButton(
                onPressed: () => "", 
                child: const Text('Forget Password?',
                style: TextStyle(color: Color(0xff37ECBA),
                 fontSize: 16,
                 ),
                ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  color: const Color(0xff37ECBA),
                  child: RaisedButton(
                    color: const Color(0xff37ECBA),
                    onPressed: (() => ''),
                    child:  const Text(
                      'Login', 
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 20,
                       ),),
                    ),
                )
            ],),
            const SizedBox(height: 95,),
            Expanded(
              child: Container (
                width: MediaQuery.of(context).size.width,
                height: 6.0,
                color: const Color(0xff37ECBA),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      )
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                    )),
            )
          ],
        ),
      
      ),
    );
    
  }
}

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 200,
            color: Colors.blue,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,
              flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[Colors.blue, Color(0xff40EDBD)]),
        ),
      ),
            ),
          );
    
  }
}

class InputEmail extends StatelessWidget {
  const InputEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
                decoration: 
                InputDecoration(
                hintText: "   Email",           
                ),
              );
  }
}

class InputPass extends StatelessWidget {
  const InputPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
                decoration: InputDecoration(
                hintText: "   Password",
                ),
                obscureText: true,
              );
  }
}