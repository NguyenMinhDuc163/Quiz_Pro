import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';

class AuthViewModel extends ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  Future<void> signUp(String email, String password) async {
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
  }

  Future<void> signIn(String email, String password) async {
    final response = await Supabase.instance.client.auth.signInWithPassword(
      email: email,
      password: password,
    );
    if (response.user != null) {
      _user = UserModel(id: response.user!.id, email: response.user!.email!);
      notifyListeners();
    } else {
      throw Exception('Sign In Failed');
    }
  }

  Future<void> signInWithMagicLink(String email, {String? redirectUrl}) async {
    try {
      await Supabase.instance.client.auth.signInWithOtp(
        email: email,
        emailRedirectTo: redirectUrl,
      );
    } catch (e) {
      throw Exception('Magic Link Sign-In Failed');
    }
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
    _user = null;
    notifyListeners();
  }
}
