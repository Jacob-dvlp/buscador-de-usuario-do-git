import '../../../routes/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget resultBody(state, _) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Get.toNamed(AppRouters.perfilGithub, arguments: [
          state,
          _.dataname[0],
          state["location"],
          state["following"],
          state["followers"],
          state["public_repos"],
        ]);
      },
      child: SizedBox(
        height: 100,
        child: Card(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30),
                            ),
                            child: CircleAvatar(
                              maxRadius: 29,
                              child: Image.network(
                                state["avatar_url"],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: state["name"] != null
                        ? Text(state["name"])
                        : Text(_.dataname[0]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
