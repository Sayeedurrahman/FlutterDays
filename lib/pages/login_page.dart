import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image/login_image.png',fit: BoxFit.cover),
            SizedBox(
              height: 20,
            ),
            Text(
                'Welcome $name',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Username',
                      labelText: 'Username'
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter Password',
                        labelText: 'Password'
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, '/home');
                    },
                    child: AnimatedContainer(
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton? 50:4)
                      ),
                      duration: Duration(seconds: 1),
                      child: changeButton? Icon(Icons.done,color: Colors.white,):Text(
                          'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                        ),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 40),
                  //     backgroundColor: Colors.deepPurple,
                  //     foregroundColor: Colors.white,
                  //   ),
                  //   child: Text('Login'),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, '/home');
                  //   },
                  // )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

