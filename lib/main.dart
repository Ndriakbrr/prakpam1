import 'package:flutter/material.dart';
import 'login.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Login Page",
        style: TextStyle(
          color: Colors.black
        ),
        ),backgroundColor: Colors.pink,
        leading: Icon(Icons.home),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
      ],
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String title = 'halo';
  String desc = 'halo';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2)
                    )
                  ]
                  ),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20,
                      shadows: [
                      Shadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(2, 2)
                  )
                    ]
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',
              style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),

                child: ElevatedButton(
                    child: const Text('Login'),
                    onPressed: () {
                      if(nameController.text == 'andri' && passwordController.text == 'rifqi'){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataKelompok(
                                )
                            )
                        );
                      }
                      print(nameController.text);
                      print(passwordController.text);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,)
                )
            ),
            Row(
              children: <Widget>[
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }
}