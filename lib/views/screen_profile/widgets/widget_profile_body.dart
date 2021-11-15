import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget custonWidgetBody(state, index) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: SizedBox(
        height: 100,
        width: 100,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: state[index]["language"] != null
                        ? Text(
                            "Stack: " + state[index]["language"],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const Text(""),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  state[index]["name"] != null
                      ? Text(
                          "Projeto: " + state[index]["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      : const Text(""),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
