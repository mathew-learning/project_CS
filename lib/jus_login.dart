import 'package:flutter/material.dart';
import 'dash_board.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title});

  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

      final usernameValue = TextEditingController();
      final passwordValue = TextEditingController();

      

      void checklogin(){
      final username = usernameValue.text;
      final password = passwordValue.text;
      print(username);

        if (username == 'Admin' && password == 'Admin') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashBoard()),
            );
        }else{
          
        }

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100),
      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          const Icon(Icons.login_sharp, size: 50),
           TextField(
              keyboardType: TextInputType.emailAddress,
              controller: usernameValue,
              decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email)
            ),
            
            ),
          TextField(
              
              keyboardType: TextInputType.visiblePassword,
              controller: passwordValue,
              decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.password)
            ),
            
            ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed:checklogin,
  child: const Text('Login')),

     
    

        ],
      ),
    );
  }
  

  
}


