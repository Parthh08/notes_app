import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 10,),
            Text('Welcome back!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                decoration: InputDecoration(
                    icon: Opacity(
                        opacity: 0.5,
                        child: Icon(
                          Icons.mail,
                        )),
                    labelText: 'Email',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(height: 10,),
            const TextField(
              decoration: InputDecoration(
                icon: Opacity(
                    opacity: 0.5,
                    child: Icon(
                      Icons.lock,
                    )),
                labelText: 'Password',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: const Text('Login')),
            TextButton(onPressed: (){}, child: const Text('Or Sign Up',style: TextStyle(color: Colors.black),))
          ],

        ),
      ),
    );
  }
}
