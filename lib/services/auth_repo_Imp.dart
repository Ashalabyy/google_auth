import 'package:firebase_auth/firebase_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'auth_repository.dart';

class AuthRepoImp implements AuthRepo {
  final googleSignIn = GoogleSignIn();
  final _firebaseAuth = FirebaseAuth.instance;
  GoogleSignInAccount? _user;
  @override
  Future<GoogleSignInAccount?> signIn() async {
    try {
      final googleUser = await googleSignIn.signIn();

      _user = googleUser;

      final googleAuth = await googleUser!.authentication;
      final credentials = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
      await FirebaseAuth.instance.signInWithCredential(credentials);
    } catch (e) {
      throw (e);
    }
  }

  @override
  Future signOut() {
    throw UnimplementedError();
  }

  @override
  GoogleSignInAccount get user => _user!;

  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();
}
