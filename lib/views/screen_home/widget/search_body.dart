import 'package:clone_git_application_flutter/util/coloresutill.dart';
import 'package:flutter/material.dart';

Widget searchBody(_) {
  return Column(
    children: [
      const SizedBox(
        height: 100,
      ),
      SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  child: Image.asset(
                    "assets/img/default.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: _.formKey,
                child: TextFormField(
                  validator: _.validatorInput,
                  controller: _.inputSearch,
                  decoration: const InputDecoration(
                    hintText: "Buscar usuario",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: AppColors.primary,
                ),
                onPressed: () => _.nextPage(),
                child: const Text("Pesquisar"),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
