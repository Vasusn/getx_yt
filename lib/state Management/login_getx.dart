import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_yt/controller/login_controller.dart';

class LoginGetx extends StatefulWidget {
  const LoginGetx({super.key});

  @override
  State<LoginGetx> createState() => _LoginGetxState();
}

class _LoginGetxState extends State<LoginGetx> {
  final loginController = Get.put(LoginController());
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Login'),
        centerTitle: true,
         // Adds shadow to the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Add padding for better spacing
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch, // Stretch to fit the full width
          children: [
            
            const SizedBox(height: 20), // Space between title and form fields
            TextFormField(
              controller: loginController.emailController.value,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email), // Email icon
                hintText: 'Enter Email',
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded borders
                ),
              ),
            ),
            const SizedBox(height: 15), // Space between fields
            TextFormField(
              controller: loginController.passwordController.value,
              obscureText: true, // Hide password text
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock), // Password icon
                hintText: 'Enter Password',
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded borders
                ),
              ),
            ),
            const SizedBox(height: 20), // Space before button
            Obx(
              () => ElevatedButton(
              onPressed: () {
                loginController.loginApi();
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15.0), // Padding inside button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners for the button
                ),
                // Button background color
              ),
              child: loginController.loading.value ? CircularProgressIndicator(
                color: Colors.white,
                
              ) : const Text(
                'Login',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            )
            
          ],
        ),
      ),
    );
  }
}
