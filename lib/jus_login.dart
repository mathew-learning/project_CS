import 'package:flutter/material.dart';
import 'dash_board.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          const Icon(Icons.login_sharp, size: 50),
          const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email)
            ),
            
            ),
          const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password)
            ),
            
            ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed:(){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashBoard()),
            );
          },
  child: const Text('Login')),
    

        ],
      ),
    );
  }
  

  
}


