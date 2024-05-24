import 'package:flutter/material.dart';
import 'package:flutter_firebase_application_1/app/modules/resetPassword/controllers/reset_password_controller.dart';
import 'package:flutter_firebase_application_1/app/routes/app_pages.dart';
import 'package:get/get.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ResetPasswordView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child: const Text(
                'Flutter Reset Password Page',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  labelText: 'Email',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.LOGIN);
              },
              child: Text('Back to Login'),
            ),
            Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.indigo,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: const Text('Reset Password'),
                  onPressed: () =>
                      controller.resetPassword(controller.emailController.text),
                )),
          ],
        ),
      ),
    );
  }
}
