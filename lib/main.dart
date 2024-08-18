import 'package:error_stack/error_stack.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:quiz_pro/res/core/helpers/local_storage_helper.dart';
import 'package:quiz_pro/utils/routers.dart';
import 'package:quiz_pro/view/userAuth/splash_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:provider/provider.dart';

import 'providers/provider_setup.dart';
import 'viewModel/auth_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Locale defaultLocale = Locale('en', 'US'); // Ngôn ngữ mặc định
  String? savedLocale = LocalStorageHelper.getValue('languageCode');
  if (savedLocale != null) {
    defaultLocale = Locale(savedLocale);
  }
  await Hive.initFlutter();
  await LocalStorageHelper.initLocalStorageHelper();
  await dotenv.load(fileName: ".env");

  // Initialize Supabase with variables from .env
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Initialize ErrorStack
  await ErrorStack.init();

  // Run the app
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('vi', 'VN')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      child: MultiProvider(
        providers: ProviderSetup.getProviders(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690), // Kích thước màn hình thiết kế gốc
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
