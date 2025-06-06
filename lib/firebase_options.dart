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
    apiKey: 'AIzaSyBrIP7fuFqea0Rz9r1tY1HfynMaMwmtUBU',
    appId: '1:976836390689:web:9f181c566131c1871d9860',
    messagingSenderId: '976836390689',
    projectId: 'aabi-s',
    authDomain: 'aabi-s.firebaseapp.com',
    storageBucket: 'aabi-s.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtV5o3fSE3HjJmRAFnRTXcFdlLni32YKo',
    appId: '1:976836390689:android:5849e0ff6f6511491d9860',
    messagingSenderId: '976836390689',
    projectId: 'aabi-s',
    storageBucket: 'aabi-s.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBPt9h2oBLd7In6iISLzy2nmG5hCiBvpCc',
    appId: '1:976836390689:ios:f7d00abfa79017431d9860',
    messagingSenderId: '976836390689',
    projectId: 'aabi-s',
    storageBucket: 'aabi-s.firebasestorage.app',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBPt9h2oBLd7In6iISLzy2nmG5hCiBvpCc',
    appId: '1:976836390689:ios:f7d00abfa79017431d9860',
    messagingSenderId: '976836390689',
    projectId: 'aabi-s',
    storageBucket: 'aabi-s.firebasestorage.app',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBrIP7fuFqea0Rz9r1tY1HfynMaMwmtUBU',
    appId: '1:976836390689:web:348523b36534b7851d9860',
    messagingSenderId: '976836390689',
    projectId: 'aabi-s',
    authDomain: 'aabi-s.firebaseapp.com',
    storageBucket: 'aabi-s.firebasestorage.app',
  );
}
