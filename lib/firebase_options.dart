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
    apiKey: 'AIzaSyDmVJfEbIXb5yk4feaOS9DnzwrwXai9Pw0',
    appId: '1:811432022545:web:91c25c167e87e398b457b0',
    messagingSenderId: '811432022545',
    projectId: 'parippuwa-1984a',
    authDomain: 'parippuwa-1984a.firebaseapp.com',
    storageBucket: 'parippuwa-1984a.firebasestorage.app',
    measurementId: 'G-SVK1NPWXWN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLvvGN688dE0MVljYU9Eqy5O7lz-yYoeI',
    appId: '1:811432022545:android:27e4226e0adc031bb457b0',
    messagingSenderId: '811432022545',
    projectId: 'parippuwa-1984a',
    storageBucket: 'parippuwa-1984a.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBFGc38AAPaoRpi3mOfZSH41gYENuAOp24',
    appId: '1:811432022545:ios:0073fa9aad28351fb457b0',
    messagingSenderId: '811432022545',
    projectId: 'parippuwa-1984a',
    storageBucket: 'parippuwa-1984a.firebasestorage.app',
    iosBundleId: 'com.example.parippuwa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBFGc38AAPaoRpi3mOfZSH41gYENuAOp24',
    appId: '1:811432022545:ios:0073fa9aad28351fb457b0',
    messagingSenderId: '811432022545',
    projectId: 'parippuwa-1984a',
    storageBucket: 'parippuwa-1984a.firebasestorage.app',
    iosBundleId: 'com.example.parippuwa',
  );
}
