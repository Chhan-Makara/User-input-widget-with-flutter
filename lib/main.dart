import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserInputScreen(),
    );
  }
}

class UserInputScreen extends StatelessWidget {
  const UserInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                '''Enter your Email to sign in.
Enjoy your food.''',
              ),
              SizedBox(height: 10),
              //Section enter your email
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light grey background
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "Enter your email",
                          border: InputBorder.none, // No border
                        ),
                      ),
                    ),
                    Icon(Icons.email, color: Colors.grey),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              //Section password
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Light grey background
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your password",
                          border: InputBorder.none, // No border
                        ),
                      ),
                    ),
                    Icon(Icons.password, color: Colors.grey),
                  ],
                ),
              ),
              // Section forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot password?"),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //section sign in button
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: WidgetStatePropertyAll(Colors.cyan),
                      ),
                      onPressed: () {},
                      child: Text(
                        "sign in".toUpperCase(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              //section don't have account
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Don't have account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text("Create new account"),
                  )
                ],
              ),
              Center(
                child: Text("Or"),
              ),
              SizedBox(
                height: 30,
              ),
              //connect with facebook
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKbEXhAKUpoxKQpxU0OllJSVoTfm0LBSXe7ikCXrBbT8u0AvWlRQjgAjDmVPAEbjPpPmU&usqp=CAU",
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Connect with facebook",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //connect with google
              Container(
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.white)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://static.vecteezy.com/system/resources/previews/022/484/509/non_2x/google-lens-icon-logo-symbol-free-png.png",
                              fit: BoxFit.cover,
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Connect with google",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
