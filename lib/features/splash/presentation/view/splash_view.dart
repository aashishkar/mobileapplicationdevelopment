import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_model/splash_cubit.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    context.read<SplashCubit>().init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: Image.asset('assets/images/wise_acasemy_logo.png'),
                ),
                // const Text(
                //   'Wise Academy',
                //   style: TextStyle(
                //     fontSize: 25,
                //     color: Colors.blue,
                //   ),
                // ),
                const SizedBox(height: 10),
                const CircularProgressIndicator(),
                const SizedBox(height: 10),
                // const Text('version : 1.0.0')
              ],
            ),
          ),
          // Positioned(
          //   bottom: 10,
          //   left: MediaQuery.of(context).size.width / 4,
          //   child: const Text(
          //     'Developed by: Abhishek Chaudhary',
          //     style: TextStyle(fontSize: 15),
          //   ),
          // ),
        ],
      ),
    );
  }
}
