# URL LAUNCHER

### A simple flutter example to open URL

## Add Dependency
```bash
$flutter pub add url_launcher
```

## Configuration on IOS
Add the following code inside info.plist
```code
<key>LSApplicationQueriesSchemes</key>
<array>
  <string>sms</string>
  <string>tel</string>
</array>
```

## Configuration on Android
Add the following code inside AndroidManifest.xml
```code
<uses-permission android:name="android.permission.INTERNET" />
<queries>
  <!-- If your app checks for SMS support -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="sms" />
  </intent>
  <!-- If your app checks for call support -->
  <intent>
    <action android:name="android.intent.action.VIEW" />
    <data android:scheme="tel" />
  </intent>
</queries>
```

## Run on WEB
```bash
$flutter run -d chrome
```

## Result
<p>
<img src="https://github.com/Vishwa-Karthik/Flutter-URL-Launcher/blob/master/img.jpg" height=400 width=200 />
</p>

## Refernce
Pub.dev: [url_launcher](https://pub.dev/packages/url_launcher)

