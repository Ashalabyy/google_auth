import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/auth_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () async {},
              icon: const Icon(
                Icons.email,
              ),
              label: Text(
                'Sign In with Email',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () async {
                final userFunctions =
                    Provider.of<AuthRepo>(context, listen: false);
                await userFunctions.signIn();
              },
              icon: const Icon(
                Icons.g_mobiledata,
                size: 40,
              ),
              label: Text(
                'Sign In with Google',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
