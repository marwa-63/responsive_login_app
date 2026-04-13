
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login_screen/core/theme/app_theme.dart';
import 'package:login_screen/features/views/login_screen.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392.7, 850.9),  
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          home: LoginScreen() ,
               
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

     final size = MediaQuery.of(context).size;
    print('Width: ${size.width}, Height: ${size.height}');

    return Container(
      width:300,
      height: 800,
      color: Colors.pink,
      child: Center(
        child: Text('Width: ${size.width}, Height: ${size.height}'),
      ),
    );
  }
}

 
