import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Get current user
  User? get currentUser => _firebaseAuth.currentUser;

  // Stream of authentication state changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Sign up with email and password
  Future<UserCredential?> signUpWithEmailPassword(String email, String password, String displayName) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      
      // After creating the user, save additional user info to Firestore
      if (userCredential.user != null) {
        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'displayName': displayName,
          'email': email,
          'role': 'supporter', // Default role for new sign-ups
          'createdAt': Timestamp.now(),
          'subscribedToNewsletter': false, // Default value
          'followedMissionaries': [], // Default value
          'followedFields': [], // Default value
        });
        // You might want to update the user's Firebase Auth profile display name too
        await userCredential.user!.updateDisplayName(displayName);
      }
      return userCredential;
    } on FirebaseAuthException catch (e) {
      // Handle errors (e.g., email already in use, weak password)
      print('Failed to sign up: ${e.message}');
      // You might want to throw a custom exception or return an error message
      return null;
    }
  }

  // Sign in with email and password
  Future<UserCredential?> signInWithEmailPassword(String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      // Handle errors (e.g., user not found, wrong password)
      print('Failed to sign in: ${e.message}');
      // You might want to throw a custom exception or return an error message
      return null;
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print('Failed to sign out: ${e.toString()}');
      // Handle errors if necessary
    }
  }

  // You can add other methods here later, like:
  // - Password reset
  // - Update user profile
  // - Social logins (Google, Facebook etc.)
}