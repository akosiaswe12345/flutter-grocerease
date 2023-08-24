import 'package:flutter/material.dart';
import 'package:grocer_ease_app/slashScreen/views/splash_screen2_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashSceenPage extends StatefulWidget {
  const SplashSceenPage({super.key});

  @override
  State<SplashSceenPage> createState() => _SplashSceenPageState();
}

class _SplashSceenPageState extends State<SplashSceenPage> {

  @override
  void initState(){
    super.initState();
    _navigationToSplashScreen2();
  }

  _navigationToSplashScreen2() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    // ignore: use_build_context_synchronously
  //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SplashScreen2Page()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('lib/assets/ic_logo.png'), 
                height: 220,
                width: 240,),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(
                   'Grocer',
                    style: TextStyle(
                    color: Color.fromRGBO(255, 208, 44, 1),
                    fontSize: 40),
                ), 
                Text(
                   'Ease',
                    style: TextStyle(
                    color: Color.fromRGBO(98, 145, 130, 1),
                    fontSize: 40),
                ),
              ],
                
              )
            ),
          ],
        ),
      ),
    );
  }
}


// AnimatedSplashScreen(
//             duration: 3000,
//             splash: Icons.home,
//             nextScreen: const SplashScreen2Page(),
//             splashTransition: SplashTransition.fadeTransition,
//             pageTransitionType: PageTransitionType.scale,
//             backgroundColor: Colors.blue));