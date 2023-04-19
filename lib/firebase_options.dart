// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

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

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMS_Nc3IuLqJ0AT3z60qShKbfcFWUOiwg',
    appId: '1:476014117271:ios:6c5f912a3172d49f0e04d2',
    messagingSenderId: '476014117271',
    projectId: 'carcrm-57969',
    storageBucket: 'carcrm-57969.appspot.com',
    androidClientId:
        '476014117271-0piefng9814lm1bm76ghnst3aebi8s67.apps.googleusercontent.com',
    iosClientId:
        'com.googleusercontent.apps.476014117271-0piefng9814lm1bm76ghnst3aebi8s67',
    iosBundleId: 'com.gencrm',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAgOjAw2nFu0pwNO2zSjtr7QzTR2dTdJIg',
    appId: '1:476014117271:android:cc7e37aac88f2a150e04d2',
    messagingSenderId: '476014117271',
    projectId: 'carcrm-57969',
    storageBucket: 'carcrm-57969.appspot.com',
  );
}
