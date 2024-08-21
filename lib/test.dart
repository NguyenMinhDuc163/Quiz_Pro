// import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:quiz_pro/view/home/home_screen.dart';
//
//
// class MainApp extends StatefulWidget {
//   const MainApp({super.key});
//   @override
//   State<MainApp> createState() => _MainAppState();
// }
//
// class _MainAppState extends State<MainApp> {
//   int _page = 0;
//   GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: HomeScreen(),
//       bottomNavigationBar: CurvedNavigationBar(
//         key: _bottomNavigationKey,
//         index: 0,
//         items: [
//           CurvedNavigationBarItem(
//             // child: Image.asset(Icons.home),
//             child: Icon(Icons.home),
//             // label: LocaleKeys.home.tr(),
//           ),
//           CurvedNavigationBarItem(
//             // child: Image.asset(AssetPath.icoGift2),
//             child: Icon(Icons.card_giftcard),
//             // label: LocaleKeys.gift.tr(),
//           ),
//           CurvedNavigationBarItem(
//             // child: Image.asset(AssetPath.icoQR),
//             child: Icon(Icons.qr_code),
//             label: 'QR',
//           ),
//           CurvedNavigationBarItem(
//             // child: Image.asset(AssetPath.icoNotification),
//             child: Icon(Icons.notifications),
//             // label: LocaleKeys.notiHome.tr(),
//           ),
//           CurvedNavigationBarItem(
//             // child: Image.asset(AssetPath.icoSetting),
//             child: Icon(Icons.settings),
//             // label: LocaleKeys.setting.tr(),
//           ),
//         ],
//         color: Colors.white,
//         buttonBackgroundColor: Colors.white,
//         backgroundColor: Colors.red.shade200,
//         animationCurve: Curves.easeInOut,
//         animationDuration: Duration(milliseconds: 600),
//         onTap: (index) {
//           setState(() {
//             _page = index;
//           });
//         },
//         letIndexChange: (index) => true,
//       ),
//     );
//   }
// }