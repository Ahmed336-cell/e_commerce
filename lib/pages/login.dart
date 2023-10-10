import 'package:e_commerce/pages/signup.dart';
import 'package:e_commerce/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/colors.dart';
import 'package:lottie/lottie.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lottie.asset('assets/plant.json',
                    width: 200,
                    height: 300,
                    fit: BoxFit.fill,),


                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: kTextInput.copyWith(hintText: "Enter Your Email"),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: kTextInput.copyWith(
                      hintText: "Enter Your Password",
                    ),
                  ),

                  SizedBox(
                    height: 18,
                  ),
                  ElevatedButton(onPressed: (){},
                      child: Text("Sign In", style: TextStyle(fontSize: 19),),
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
                      Text("Don't Have an account ? " , style: TextStyle(fontSize: 18),),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>const  SignUpScreen()));
                      },
                          child: Text("Sign Up",style: TextStyle(color: Colors.black , fontSize: 18),)
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
