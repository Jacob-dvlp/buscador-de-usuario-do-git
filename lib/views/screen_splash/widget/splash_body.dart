import 'package:flutter/material.dart';

import '../../../util/coloresutill.dart';

Widget splasBody() {
  return Column(
    children: [
      const SizedBox(
        height: 220,
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(
            child: Image.asset(
              "assets/img/splash.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 80,
      ),
      const CircularProgressIndicator(
        backgroundColor: AppColors.primary,
        color: AppColors.secondary,
      ),
    ],
  );
}
