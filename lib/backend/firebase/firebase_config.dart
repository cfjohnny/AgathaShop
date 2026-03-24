import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDCLMjjo4ZImohhzazOy2FNEA2t_ToTKh0",
            authDomain: "agatha-g1.firebaseapp.com",
            projectId: "agatha-g1",
            storageBucket: "agatha-g1.firebasestorage.app",
            messagingSenderId: "831277688805",
            appId: "1:831277688805:web:ef6a2250d0d0dfea84310c",
            measurementId: "G-QSZPBL39SF"));
  } else {
    await Firebase.initializeApp();
  }
}
