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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBn6RJhbno12QfoB5yJSUChZQau7GpqDFU',
    appId: '1:53721942604:web:5f4cce8530f20fe80142e9',
    messagingSenderId: '53721942604',
    projectId: 'seed-75dc4',
    authDomain: 'seed-75dc4.firebaseapp.com',
    storageBucket: 'seed-75dc4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEoLI2MtkGr00TkpyQfjJKWyrRky8spMQ',
    appId: '1:53721942604:android:91cb3a2b470282bf0142e9',
    messagingSenderId: '53721942604',
    projectId: 'seed-75dc4',
    storageBucket: 'seed-75dc4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBcZF68u_1-mNBfpQmfQe1voyefj-sTw1c',
    appId: '1:53721942604:ios:87827a45e433a34e0142e9',
    messagingSenderId: '53721942604',
    projectId: 'seed-75dc4',
    storageBucket: 'seed-75dc4.firebasestorage.app',
    iosBundleId: 'com.example.seedFirebase',
  );
}
