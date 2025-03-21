import 'package:flutter/material.dart';

import 'package:cinema_lphant/config/router/app_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:cinema_lphant/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



Future <void> main()async {

  await dotenv.load(fileName: ".env");

  runApp(
    const ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
    );
  }
}
