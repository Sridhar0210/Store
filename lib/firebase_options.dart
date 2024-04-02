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
    apiKey: 'AIzaSyDWl1Ya-HKkVZHifXaaPvwW4Hg5Q_QkaAg',
    appId: '1:512227673117:web:05732c297ecf4bd7c0b2f4',
    messagingSenderId: '512227673117',
    projectId: 'store-001-2001',
    authDomain: 'store-001-2001.firebaseapp.com',
    storageBucket: 'store-001-2001.appspot.com',
    measurementId: 'G-WPK48N5CH8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCP99zRZ9KU4tNYHRGtkmsvz9ay90L3EOE',
    appId: '1:512227673117:android:b5366a0a70837a3cc0b2f4',
    messagingSenderId: '512227673117',
    projectId: 'store-001-2001',
    storageBucket: 'store-001-2001.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUnNnGaKIlINyNBSjeNEjRO3hucH3arPc',
    appId: '1:512227673117:ios:573e7ad257602000c0b2f4',
    messagingSenderId: '512227673117',
    projectId: 'store-001-2001',
    storageBucket: 'store-001-2001.appspot.com',
    androidClientId: '512227673117-fap2kmfg79o88bgbfi5iik5cdol8st1h.apps.googleusercontent.com',
    iosClientId: '512227673117-4f5ucrd1j6rm7juhnvqlk1ocffliu1vd.apps.googleusercontent.com',
    iosBundleId: 'com.Ecommerce.eCommerceAplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUnNnGaKIlINyNBSjeNEjRO3hucH3arPc',
    appId: '1:512227673117:ios:b8e025551b94373bc0b2f4',
    messagingSenderId: '512227673117',
    projectId: 'store-001-2001',
    storageBucket: 'store-001-2001.appspot.com',
    androidClientId: '512227673117-fap2kmfg79o88bgbfi5iik5cdol8st1h.apps.googleusercontent.com',
    iosClientId: '512227673117-ujuo8m0h07k7k68qji771n3lfgu3plck.apps.googleusercontent.com',
    iosBundleId: 'com.Ecommerce.eCommerceAplication.RunnerTests',
  );
}
