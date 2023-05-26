import 'package:bron_hotel/pages/splash/loading-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return const MaterialApp(
      title: '',
      home:  LoadingPage(),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        // DefaultCupertinoLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      locale: Locale('ru_RU'),
      supportedLocales: [
        Locale('ru', 'RU'),
      ],
    );
  }
}


