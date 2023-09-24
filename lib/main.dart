import 'package:e_learn/Core/Parials/Routers.dart';
import 'package:e_learn/Core/Theme/DarkTheme.dart';
import 'package:e_learn/Core/Theme/LightTheme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {
return  GetMaterialApp(
      theme: ligh,
      darkTheme: dark,
      debugShowCheckedModeBanner: false,
      getPages:pages,
    );
      });
    
   
  }
}
