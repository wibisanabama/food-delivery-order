import 'package:flutter/material.dart';
import 'package:food_delivery_order/view/page/home.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const Icon(
              Icons.rice_bowl,
              size: 80,
              color: Colors.black,
            ),
            const SizedBox(height: 40),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Selamat Datang\ndi Food Order",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
            const SizedBox(height: 8),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Nikmati kemudahan memesan dari mana saja!",
                style: TextStyle(fontSize: 14, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 12),

            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  const Text("Belum punya akun? "),
                  GestureDetector(
                    onTap: () {
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                onPressed: () {
                  Get.off(() => HomePage());
                },
                child: const Text(
                  "MASUK",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}