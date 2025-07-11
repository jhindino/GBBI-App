// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCbfTJRQUvQKv5S1uJ4mz4WasgJRSQMkP8',
    appId: '1:893670100074:web:4001d62ef0d44f86d44e13',
    messagingSenderId: '893670100074',
    projectId: 'gbbi-app',
    authDomain: 'gbbi-app.firebaseapp.com',
    storageBucket: 'gbbi-app.firebasestorage.app',
    measurementId: 'G-62CDHCZFXF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCDBqC0EuABrJS1I3emcZmEhN0y-Q_OAy8',
    appId: '1:893670100074:android:798a7daec6cc0c19d44e13',
    messagingSenderId: '893670100074',
    projectId: 'gbbi-app',
    storageBucket: 'gbbi-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjI3d9XNvFULKag1Zgxi4qse-LMOF4hR4',
    appId: '1:893670100074:ios:b259ea5e7bdd729cd44e13',
    messagingSenderId: '893670100074',
    projectId: 'gbbi-app',
    storageBucket: 'gbbi-app.firebasestorage.app',
    iosBundleId: 'com.example.gbbApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjI3d9XNvFULKag1Zgxi4qse-LMOF4hR4',
    appId: '1:893670100074:ios:b259ea5e7bdd729cd44e13',
    messagingSenderId: '893670100074',
    projectId: 'gbbi-app',
    storageBucket: 'gbbi-app.firebasestorage.app',
    iosBundleId: 'com.example.gbbApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCbfTJRQUvQKv5S1uJ4mz4WasgJRSQMkP8',
    appId: '1:893670100074:web:e5de8a80d39007c4d44e13',
    messagingSenderId: '893670100074',
    projectId: 'gbbi-app',
    authDomain: 'gbbi-app.firebaseapp.com',
    storageBucket: 'gbbi-app.firebasestorage.app',
    measurementId: 'G-1K34L645GM',
  );
}
