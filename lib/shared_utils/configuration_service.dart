import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ConfigurationService {
  static Future<void> initApp() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );

    // Make sure to configure Firebase correctly before uncommenting here

    // await Firebase.initializeApp(
    //   options: kIsWeb || Platform.isAndroid
    //       ? FirebaseOptions(
    //           apiKey: "your-api-key",
    //           appId: "your-app-id",
    //           messagingSenderId: "your-messaging-sender-id",
    //           projectId: "your-project-id",
    //           storageBucket: "your-app-name.appspot.com",
    //         )
    //       : null,
    // );

    // // very important step! Without this, after the user deinstalls the app and installs it again,
    // // Firebase still thinks that the user is logged in so we have to check if it is the first app start (local storage)
    // // and if so, sign out the user from Firebase so 'currentUser' is null.
    // await AuthenticationService.signOutUserIfUserDeinstalledAndReinstalledApp();
  }
}
