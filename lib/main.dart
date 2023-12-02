import 'package:amazon/constants/global_variables.dart';
import 'package:amazon/features/auth/screens/login_screen.dart';
import 'package:amazon/routes/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black87,
          ),
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Amazon Clone"),
      //   ),
      //   body: Column(
      //     children: [
      //       const Center(
      //         child: Text("Hello World"),
      //       ),
      //       Builder(builder: (context) {
      //         return ElevatedButton(
      //             onPressed: () {
      //               Navigator.pushNamed(context, AuthScreen.routeName);
      //             },
      //             child: const Text("Click Me"));
      //       })
      //     ],
      //   ),
      // ),
      home: const LoginScreen(),
    );
  }
}
