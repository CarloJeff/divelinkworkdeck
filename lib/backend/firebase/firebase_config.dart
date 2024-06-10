import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCBQya3Qk4egtB1gOXjTXiTfGzGkYNCMdY",
            authDomain: "viblinx-19848.firebaseapp.com",
            projectId: "viblinx-19848",
            storageBucket: "viblinx-19848.appspot.com",
            messagingSenderId: "295068445537",
            appId: "1:295068445537:web:c0db6223ca0bde9bf13320",
            measurementId: "G-D1TE9GW99P"));
  } else {
    await Firebase.initializeApp();
  }
}
