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
    apiKey: 'AIzaSyA4ivLB7FnjeWgGo9MFwq8mHA_pB_JdQZA',
    appId: '1:225566911088:web:10c226ab3af0cd51e222b5',
    messagingSenderId: '225566911088',
    projectId: 'brave-cccec',
    authDomain: 'brave-cccec.firebaseapp.com',
    storageBucket: 'brave-cccec.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbglT8g6Sai_jUTeW2p9xMI3P6Z0Xyuyg',
    appId: '1:225566911088:android:032969c9deb4c70de222b5',
    messagingSenderId: '225566911088',
    projectId: 'brave-cccec',
    storageBucket: 'brave-cccec.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAE1JvHRLiEm4sG6M7VTfJFrmazOxoZzXc',
    appId: '1:225566911088:ios:7c8c23cb7d84f180e222b5',
    messagingSenderId: '225566911088',
    projectId: 'brave-cccec',
    storageBucket: 'brave-cccec.appspot.com',
    iosClientId: '225566911088-f9mijd15nnq8eek6vkmj6h0tik0sino2.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAE1JvHRLiEm4sG6M7VTfJFrmazOxoZzXc',
    appId: '1:225566911088:ios:b443e49d8760f1b6e222b5',
    messagingSenderId: '225566911088',
    projectId: 'brave-cccec',
    storageBucket: 'brave-cccec.appspot.com',
    iosClientId: '225566911088-fcvhurs3e1o5916hovt5di3k10rdc4aq.apps.googleusercontent.com',
    iosBundleId: 'com.example.gtkFlutter.RunnerTests',
  );
}
