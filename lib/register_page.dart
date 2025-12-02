import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Logo
                const SizedBox(height: 50),
                Lottie.asset(
                  'assets/main.json',
                  width: 120,
                  height: 120,
                ),
                const SizedBox(height: 10),
                const Text(
                  "Create Account",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),

                // Email
                Container(
                  width: deviceWidth * 0.9,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Password
                Container(
                  width: deviceWidth * 0.9,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                // Phone number
                Container(
                  width: deviceWidth * 0.9,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Google / Apple Sign-in Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.g_mobiledata),
                      label: const Text("Google"),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.apple),
                      label: const Text("Apple"),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // Register button
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: Container(
                    width: deviceWidth * 0.5,
                    height: 45,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Login? link (FUNCTIONAL ✅)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Login? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
