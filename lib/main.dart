import 'package:error_stack/error_stack.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_pro/utils/routers.dart';
import 'package:quiz_pro/view/userAuth/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Initialize ErrorStack
  await ErrorStack.init();

  // Run the app
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690), // Kích thước màn hình thiết kế gốc
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Quiz',
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          home: const SplashScreen(),
          routes: routes, // Đã định nghĩa routes ở bên trên
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoutes, // Đã định nghĩa generateRoutes ở bên trên
        );
      },
    );
  }
}
