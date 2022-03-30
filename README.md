# Flutter Boilerplate

A Flutter boilerplate by Christian Konnerth

## Getting Started

This project is a starting point for a Flutter application.


## App Icon 

**For iOS & Android:**

To change the App Icon simply change the asset in "assets/app_icons/app_icon.png" 
The preferred icon size is 1024x1024.
and run:

        flutter pub get
        flutter pub run flutter_launcher_icons:main -f pubspec.yaml

If you get this error: FormatException: Invalid number (at character 1)
Follow this: 
https://github.com/fluttercommunity/flutter_launcher_icons/issues/324#issuecomment-1005736502

and run the commands above again. 

**For Web:**

Go to this site:

    https://www.favicon-generator.org/

and create a your desired favicon. Make sure to select *Generate only 16x16 favicon.ico*.
    
Download it and replace your icon with the icon inside `web/icons/favicon.ico`.

## Splash Screen
To change the App Icon simply change the asset in "assets/app_icons/splash.png" 
and run:

    flutter pub run flutter_native_splash:create

You can change the background color in `pubspec.yaml` inside `flutter_native_splash:`.

## App Name
**For Android:**

Review the default App Manifest file `AndroidManifest.xml` located in `/android/app/src/main/` and 
verify the values are correct.

    Edit the android:label in the application tag to reflect the final name of the app.

**For iOS:**

Navigate to your target’s settings in Xcode.

In Xcode, open `Runner.xcworkspace` in your app’s ios folder.

To view your app’s settings, select the Runner project in the Xcode project navigator. Then, in the main view sidebar, select the `Runner` target.

Select the `General` tab. Next, you’ll verify the most important settings:

    Display Name: the name of the app to be displayed on the home screen and elsewhere.

## Internationalization
Translating has never been easier! All you have to to is call `.tr` behind every `String` you want to 
translate. When you're done simply call:

    cd lib/locale && python3 translate_script.py && cd .. && cd ..

This does all the annoying work for you so all you have to do is go through all your languages you want to translate inside `locale/translations/` and add the missing translations. 

**DO NOT EDIT the file inside `locale/languages/base_translations/`**

If you want to add another language simply create a new file inside `locale/translations` and add an empty `Map` like this:
    
    const Map<String, String> es = {};

Don't forget to add the `language_code` in your `supported_language_codes` and add it in `AppTranslation.translationsKeys`.


The basic idea behind this translation is to use the `String` itself as `key`.   


## State Management
I am using Provider. -> https://pub.dev/packages/provider

## Backend
I am using Firebase. -> https://firebase.flutter.dev/docs/overview/

For setting up iOS, Android and Web simply follow the steps on Firebase. 

For Web: Go into `index.html` and uncomment the Firebase-block. Also add your app's `firebaseConfigs`.

## Animations
For animations like the loading dots animation check out "https://lottiefiles.com/". 

Free animations for almost everything you need and really easy to implement (example: `loading_dots.dart`). 

## Helpers
This boilerplate offers a lot more utilities, such as the `LayoutService`, an easy to use `App-Router` and `helper-constants` (e.g. `sidePadding`, which will definitely make your design + code cleaner).

# Flutter Boilerplate

A Flutter boilerplate by Christian Konnerth

## Getting Started

This project is a starting point for a Flutter application.


## App Icon 

**For iOS & Android:**

To change the App Icon simply change the asset in "assets/app_icons/app_icon.png" 
and run:

        flutter pub get
        flutter pub run flutter_launcher_icons:main -f pubspec.yaml

If you get this error: FormatException: Invalid number (at character 1)
Follow this: 
https://github.com/fluttercommunity/flutter_launcher_icons/issues/324#issuecomment-1005736502

and run the commands above again. 

**For Web:**

Go to this site:

    https://www.favicon-generator.org/

and create a your desired favicon. Make sure to select *Generate only 16x16 favicon.ico*.
    
Download it and replace your icon with the icon inside `web/icons/favicon.ico`.

## Splash Screen
To change the App Icon simply change the asset in "assets/app_icons/app_icon.png" 
and run:

    flutter pub run flutter_native_splash:create

You can change the background color in `pubspec.yaml` inside `flutter_native_splash:`.

## App Name
**For Android:**

Review the default App Manifest file `AndroidManifest.xml` located in `/android/app/src/main/` and 
verify the values are correct.

    Edit the android:label in the application tag to reflect the final name of the app.

**For iOS:**

Navigate to your target’s settings in Xcode.

In Xcode, open `Runner.xcworkspace` in your app’s ios folder.

To view your app’s settings, select the Runner project in the Xcode project navigator. Then, in the main view sidebar, select the `Runner` target.

Select the `General` tab. Next, you’ll verify the most important settings:

    Display Name: the name of the app to be displayed on the home screen and elsewhere.

## Internationalization
Translating has never been easier! All you have to to is call `.tr` behind every `String` you want to 
translate. When you're done simply call:

    cd lib/locale && python3 translate_script.py && cd .. && cd ..

This does all the annoying work for you so all you have to do is go through all your languages you want to translate inside `locale/translations/` and add the missing translations. 

**DO NOT EDIT the file inside `locale/languages/base_translations/`**

If you want to add another language simply create a new file inside `locale/translations` and add an empty `Map` like this:
    
    const Map<String, String> es = {};

Don't forget to add the `language_code` in your `supported_language_codes` and add it in `AppTranslation.translationsKeys`.


The basic idea behind this translation is to use the `String` itself as `key`.   


## State Management
I am using Provider. -> https://pub.dev/packages/provider

## Backend
I am using Firebase. -> https://firebase.flutter.dev/docs/overview/

For setting up iOS, Android and Web simply follow the steps on Firebase. 

For Web: Go into `index.html` and uncomment the Firebase-block. Also add your app's `firebaseConfigs`.

## Animations
For animations like the loading dots animation check out "https://lottiefiles.com/". 

Free animations for almost everything you need and really easy to implement (example: `loading_dots.dart`). 

## Helpers
This boilerplate offers a lot more utilities, such as the `LayoutService`, an easy to use `App-Router` and `helper-constants` (e.g. `sidePadding`, which will definitely make your design + code cleaner).

