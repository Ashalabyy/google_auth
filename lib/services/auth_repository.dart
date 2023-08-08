import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthRepo {
  Future<GoogleSignInAccount?> signIn();
  Stream<User?> authStateChanges();
  GoogleSignInAccount get user;
  Future signOut();
}
