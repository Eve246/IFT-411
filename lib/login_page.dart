import 'package:flutter/material.dart';
import 'register_page.dart';
import 'home.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: const Text('IFT411')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/main.json',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const Text(
                'GLOWBYTE',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text('Innovative Technology'),
              const SizedBox(height: 20),

              // Email field
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Email', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 8),
              Container(
                width: deviceWidth * 0.9,
                height: 37,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.only(left: 10)),
                ),
              ),
              const SizedBox(height: 15),

              // Password field
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Password', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 5),
              Container(
                width: deviceWidth * 0.9,
                height: 37,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.only(left: 10)),
                ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text('Forgot password?', style: TextStyle(fontSize: 12))],
              ),
              const SizedBox(height: 20),

              // Login button
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                },
                child: Container(
                  width: 100,
                  height: 35,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: const Center(
                    child: Text('Log in', style: TextStyle(fontSize: 10, color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Create Account link (FUNCTIONAL ✅)
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
