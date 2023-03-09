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
    apiKey: 'AIzaSyAiuOMEEsD-c3AGULoims-Uodtsix8AfpM',
    appId: '1:133015062876:web:10f73a3a8a4fb796939999',
    messagingSenderId: '133015062876',
    projectId: 'login-flutter-f28f8',
    authDomain: 'login-flutter-f28f8.firebaseapp.com',
    storageBucket: 'login-flutter-f28f8.appspot.com',
    measurementId: 'G-Q730W4GQKY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC6k7XwFvIWgJRq7cxDj2SJxq5vm7Yf-IM',
    appId: '1:133015062876:android:308dba53267df270939999',
    messagingSenderId: '133015062876',
    projectId: 'login-flutter-f28f8',
    storageBucket: 'login-flutter-f28f8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCFzUXz7LivSYRm5jyYTfDxnBDmg2-VHDM',
    appId: '1:133015062876:ios:7bb54156f7889509939999',
    messagingSenderId: '133015062876',
    projectId: 'login-flutter-f28f8',
    storageBucket: 'login-flutter-f28f8.appspot.com',
    iosClientId: '133015062876-oogmfelg8jv2d6ja5u0u6skmj247190i.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCFzUXz7LivSYRm5jyYTfDxnBDmg2-VHDM',
    appId: '1:133015062876:ios:7bb54156f7889509939999',
    messagingSenderId: '133015062876',
    projectId: 'login-flutter-f28f8',
    storageBucket: 'login-flutter-f28f8.appspot.com',
    iosClientId: '133015062876-oogmfelg8jv2d6ja5u0u6skmj247190i.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFlutter',
  );
}
