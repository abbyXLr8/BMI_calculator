import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/intro.dart';
import 'package:lottie/lottie.dart';

class MyLottieWidget extends StatefulWidget {
  const MyLottieWidget({super.key});

  // const MyLottieWidget({super.key});

  @override
  State<MyLottieWidget> createState() => _MyWidgeLottietState();
}

class _MyWidgeLottietState extends State<MyLottieWidget> {
  bool isTap = false;
  Future<void> updateLoading() async {
    isTap = !isTap;
    setState(() {});
    await Future.delayed(Duration(seconds: 2));
    isTap = !isTap;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
          ),
          child: (isTap)
              ? Lottie.asset('assets/lottie/loading_gif.json')
              : InkWell(
                  onTap: () async {
                    await updateLoading();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreateApp()));
                  },
                  child: Center(child: Text("Login"))),
        ),
      ),
    );
  }
}
