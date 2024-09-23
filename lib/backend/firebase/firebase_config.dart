import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAoGcF_8QVDdC432e3al0lkTIzlDQYzlCc",
            authDomain: "todo-cq9icy.firebaseapp.com",
            projectId: "todo-cq9icy",
            storageBucket: "todo-cq9icy.appspot.com",
            messagingSenderId: "749317451933",
            appId: "1:749317451933:web:4f0cf7cf15276ea8232474"));
  } else {
    await Firebase.initializeApp();
  }
}
