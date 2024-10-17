import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseproject/SignInScreen.dart';
import 'package:myfirebaseproject/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.android);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      // StreamBuilder(
      //   stream: FirebaseAuth.instance.authStateChanges(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.waiting) {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     }
      //     if (snapshot.data != null) {
      //       return Dashboard();
      //     }
      //     return SignUpScreen();
    //     },
    //   ),
    );
  }
}
