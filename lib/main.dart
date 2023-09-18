import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiphr_app_dev_test/screens/booking_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Swiphr App Dev Test',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            extensions: const <ThemeExtension<dynamic>>[],
          ),
          home: const BookingScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
