// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:login/screen1.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: Column(
          children: [
            const Appbar(),
            const SizedBox(height: 64,),
            const Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Color(0xff3EECBC),
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  ),
                  const SizedBox(height: 20,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InputEmail(),
                ),
                const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InputPass(),
                ),
               const SizedBox(height: 5,),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: InputPass(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        color: const Color(0xff37ECBA),
                        child: RaisedButton(
                          color: const Color(0xff37ECBA),
                          onPressed: (() => ''),
                          child:  const Text(
                            'Sign Up', 
                          style: TextStyle(
                            color: Colors.white,
                             fontSize: 20,
                             ),),
                          ),
                      )
                  ],),
                ),
                const SizedBox(height: 65,),
                Expanded(
                  child: Container(
                            width: MediaQuery.of(context).size.width,
                          height: 65.0,
                          color: const Color(0xff37ECBA),
                          child: MaterialButton(child:const Text(
                            "Login",
                          style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                          ),
                          ),
                            onPressed: () { 
                            Navigator.pop(context);
                           },) 
                          ),
                ),
              ],
          
        ),
    
    
      ),
    );
  }
}