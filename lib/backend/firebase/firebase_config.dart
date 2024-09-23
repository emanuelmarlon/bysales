import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDoabsQLFt9MogdeGcInn0TFHZMX38qQV0",
            authDomain: "bybd-7dcd4.firebaseapp.com",
            projectId: "bybd-7dcd4",
            storageBucket: "bybd-7dcd4.appspot.com",
            messagingSenderId: "279374364649",
            appId: "1:279374364649:web:e1032b59703fc7fa13d578",
            measurementId: "G-6EHJ4BY2QZ"));
  } else {
    await Firebase.initializeApp();
  }
}
