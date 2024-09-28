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
    apiKey: 'AIzaSyA0GmE58ikmjJhSvOp3dZDPVYDMNhiXcsw',
    appId: '1:498608245271:web:406cf5e5eec65fb9676a52',
    messagingSenderId: '498608245271',
    projectId: 'flutterfb-p',
    authDomain: 'flutterfb-p.firebaseapp.com',
    storageBucket: 'flutterfb-p.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDKYdvO2SD_quE3gFmdKU9trxjfatLNZaE',
    appId: '1:498608245271:android:ff04c1c5786dbe6a676a52',
    messagingSenderId: '498608245271',
    projectId: 'flutterfb-p',
    storageBucket: 'flutterfb-p.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBN4ccmyoxjVTkBwYjhd-ls32gWgcA4CoU',
    appId: '1:498608245271:ios:900719ef3ddca695676a52',
    messagingSenderId: '498608245271',
    projectId: 'flutterfb-p',
    storageBucket: 'flutterfb-p.appspot.com',
    iosBundleId: 'com.example.myfirebaseproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBN4ccmyoxjVTkBwYjhd-ls32gWgcA4CoU',
    appId: '1:498608245271:ios:900719ef3ddca695676a52',
    messagingSenderId: '498608245271',
    projectId: 'flutterfb-p',
    storageBucket: 'flutterfb-p.appspot.com',
    iosBundleId: 'com.example.myfirebaseproject',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0GmE58ikmjJhSvOp3dZDPVYDMNhiXcsw',
    appId: '1:498608245271:web:647c89d38ed46710676a52',
    messagingSenderId: '498608245271',
    projectId: 'flutterfb-p',
    authDomain: 'flutterfb-p.firebaseapp.com',
    storageBucket: 'flutterfb-p.appspot.com',
  );
}
