import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.grey[300]),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hello Again
                  Text("Hello Again!", style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 10),
                  Text("Welcome back, you've been missed!", style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 50),

                  // Email TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.grey[200], border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(hintText: "Email"),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Password TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.grey[200], border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(hintText: "Password"),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Sign in Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(child: Text("Sign In", style: Theme.of(context).textTheme.labelLarge)),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // Not a Member? Register Now
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not a member?", style: Theme.of(context).textTheme.labelMedium),
                      Text(" Register Now", style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.blue)),
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
