import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  get usernameController => null;

  get signUserIn => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 236, 235),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 15),

          // icon
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Image.asset(
              'lib/images/logorm.png',
              width: 200,
              height: 200,
            ),
          ),

          const SizedBox(height: 0),

          //login
          // username textfield
          MyTextField(
            controller: usernameController,
            hintText: 'Username',
            obscureText: false,
          ),

          const SizedBox(height: 10),

          // password texfield
          MyTextField(
            controller: usernameController,
            hintText: 'Password',
            obscureText: true,
          ),

          const SizedBox(height: 10),

          // forgot password?
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          //sign in button
          MyButton(
            onTap: signUserIn,
          ),

          const SizedBox(height: 10),

          //or continue with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // google + email sign in buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              // google button
              SquareTile(imagePath: 'lib/images/google.png'),
              SizedBox(width: 20),
              // email button
              SquareTile(imagePath: 'lib/images/gmail.png')
            ],
          ),

          //get started button
        ]),
      ),
    );
  }
}
