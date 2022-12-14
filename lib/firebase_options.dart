// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyCHzpDH8-VsDhtADb_J5jjVhqslvWewfm8',
    appId: '1:716244482162:web:d17da420e0e487d39f6aeb',
    messagingSenderId: '716244482162',
    projectId: 'jobfindr-99c6c',
    authDomain: 'jobfindr-99c6c.firebaseapp.com',
    storageBucket: 'jobfindr-99c6c.appspot.com',
    measurementId: 'G-NLX25GPBN5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAD8R5waIUQMQgXnGtcGYzjJrJ5YlgYH1s',
    appId: '1:716244482162:android:291e743fe478594b9f6aeb',
    messagingSenderId: '716244482162',
    projectId: 'jobfindr-99c6c',
    storageBucket: 'jobfindr-99c6c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-LouMqgHIVEJb-ZkZuyteRz2J4tanwP4',
    appId: '1:716244482162:ios:9346496983421c0f9f6aeb',
    messagingSenderId: '716244482162',
    projectId: 'jobfindr-99c6c',
    storageBucket: 'jobfindr-99c6c.appspot.com',
    iosClientId: '716244482162-6j6cd77dr0gqu1449nns4kpgnpereb3s.apps.googleusercontent.com',
    iosBundleId: 'com.example.practice',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-LouMqgHIVEJb-ZkZuyteRz2J4tanwP4',
    appId: '1:716244482162:ios:9346496983421c0f9f6aeb',
    messagingSenderId: '716244482162',
    projectId: 'jobfindr-99c6c',
    storageBucket: 'jobfindr-99c6c.appspot.com',
    iosClientId: '716244482162-6j6cd77dr0gqu1449nns4kpgnpereb3s.apps.googleusercontent.com',
    iosBundleId: 'com.example.practice',
  );
}
