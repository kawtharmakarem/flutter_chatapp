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
    apiKey: 'AIzaSyDD4irskGix9I6mysqeoytR2S1K31j8HkY',
    appId: '1:287248413420:web:193480c90560c12516ebc9',
    messagingSenderId: '287248413420',
    projectId: 'chat-app-cf49d',
    authDomain: 'chat-app-cf49d.firebaseapp.com',
    storageBucket: 'chat-app-cf49d.appspot.com',
    measurementId: 'G-WKCXTX7Q8T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChJcG6Kuv5hKypXmRVVJf4i8DEKlmoEP8',
    appId: '1:287248413420:android:ddc29ad11afa606a16ebc9',
    messagingSenderId: '287248413420',
    projectId: 'chat-app-cf49d',
    storageBucket: 'chat-app-cf49d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDR09GOeYn0jCt1B1LeiONcgmH6IZGuPSw',
    appId: '1:287248413420:ios:d0f332d88b0b827716ebc9',
    messagingSenderId: '287248413420',
    projectId: 'chat-app-cf49d',
    storageBucket: 'chat-app-cf49d.appspot.com',
    iosBundleId: 'com.example.flutterChatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDR09GOeYn0jCt1B1LeiONcgmH6IZGuPSw',
    appId: '1:287248413420:ios:146121fe8dc8a04f16ebc9',
    messagingSenderId: '287248413420',
    projectId: 'chat-app-cf49d',
    storageBucket: 'chat-app-cf49d.appspot.com',
    iosBundleId: 'com.example.flutterChatApp.RunnerTests',
  );
}
