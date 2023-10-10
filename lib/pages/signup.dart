import 'package:e_commerce/pages/login.dart';
import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/colors.dart';


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Padding(
          padding: const EdgeInsets.all(33),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 64,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: kTextInput.copyWith(hintText: "Enter your name"),
                ),
                SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  decoration: kTextInput.copyWith(hintText: "Enter your Email"),
                ),
                SizedBox(
                  height: 33,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: kTextInput.copyWith(hintText: "Enter your Password"),
                ),
                SizedBox(
                  height: 18,
                ),
                ElevatedButton(onPressed: (){},
                  child: Text("Register", style: TextStyle(fontSize: 19),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),

                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have account ? " , style: TextStyle(fontSize: 18),),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>const  LoginScreen()));
                    },
                        child: Text("Sign in",style: TextStyle(color: Colors.black , fontSize: 18),)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
