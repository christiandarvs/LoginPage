import 'package:day_eleven_study/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final usernameInput = TextEditingController();
final passwordInput = TextEditingController();
String username = '';
String password = '';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('images/burger (1).png'),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Fast Delivery',
                style: GoogleFonts.robotoCondensed(
                  fontSize: 40,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: TextField(
                  controller: usernameInput,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    username = value;
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            usernameInput.clear();
                            username = '';
                          },
                          icon: const Icon(Icons.clear)),
                      border: const OutlineInputBorder(),
                      label: const Text('Username'),
                      hintText: 'Enter Username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextField(
                  controller: passwordInput,
                  onChanged: (value) {
                    password = value;
                  },
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            passwordInput.clear();
                            password = '';
                          },
                          icon: const Icon(Icons.clear)),
                      border: const OutlineInputBorder(),
                      label: const Text('Password'),
                      hintText: 'Enter Password'),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      if (username == 'admin' && password == 'admin123') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((BuildContext context) {
                              return HomePage();
                            }),
                          ),
                        );
                      } else {
                        _showDialog(context);
                      }
                    },
                    child: const Text('Log In')),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.blue.shade400),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          children: [
            Icon(
              Icons.warning,
              color: Colors.red,
              size: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Invalid Input',
                style: TextStyle(fontSize: 25),
              ),
            )
          ],
        ),
        content: const Text(
          "Oops, It looks like you entered the wrong username or password!",
          style: TextStyle(fontSize: 17),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
