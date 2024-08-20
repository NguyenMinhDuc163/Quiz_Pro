import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  Future<void> signUp(String email, String password) async {
    try {
      final response = await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
      );

      if (response.user != null) {
        _user = UserModel(id: response.user!.id, email: response.user!.email!);
        notifyListeners();
      } else {
        throw Exception('Sign Up Failed');
      }
    } catch (e) {
      throw Exception('Sign Up Failed: $e');
    }

  }

  Future<void> signIn(String email, String password) async {
    try {
      final response = await Supabase.instance.client.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.session != null) {
        _user = UserModel(id: response.session!.user.id, email: response.session!.user.email!);
        notifyListeners();
      } else {
        throw Exception('Sign In Failed');
      }
    } catch (e) {
      throw Exception('Sign In Failed: $e');
    }
  }

  Future<void> signInWithMagicLink(String email, {String? redirectUrl}) async {
    try {
      await Supabase.instance.client.auth.signInWithOtp(
        email: email,
        emailRedirectTo: redirectUrl,
      );
    } catch (e) {
      throw Exception('Magic Link Sign-In Failed: $e');
    }
  }

  Future<void> signOut() async {
    try {
      await Supabase.instance.client.auth.signOut();
      _user = null;
      notifyListeners();
    } catch (e) {
      throw Exception('Sign Out Failed: $e');
    }
  }
}
