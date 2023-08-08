import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code/screens/sign_up_page.dart';
import '../services/auth_repository.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userFunctions = Provider.of<AuthRepo>(context, listen: false);
    return StreamBuilder(
      stream: userFunctions.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          return const loginPage();
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        }

        return const SignUpPage();
      },
    );
  }
}
