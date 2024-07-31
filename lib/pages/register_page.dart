import 'package:flutter/material.dart';
import 'package:foodie/components/custom_button.dart';
import 'package:foodie/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),

            // message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(
              height: 25,
            ),

            // email textfield

            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            MyTextfield(
              controller: confirmPasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),
            // sign in button
            CustomButton(
              onTap: () {},
              text: "Sign up",
            ),
            const SizedBox(
              height: 25,
            ),

            // not a member?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
