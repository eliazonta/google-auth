import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService {
  handleAuthState(){
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snaphot){
        if(snaphot.hasData){
          return HomePage();
        }else {
          return const LoginPage();
        }
      }
    );
  }
}