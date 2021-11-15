import 'package:clone_git_application_flutter/util/coloresutill.dart';
import 'package:flutter/material.dart';

Widget custtonWidgetHeader(_controller) {
  return SizedBox(
    height: 260,
    child: Stack(
      children: [
        Container(
          color: AppColors.primary,
        ),
        Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    child: CircleAvatar(
                      maxRadius: 60,
                      child: Image.network(_controller.data[0]["avatar_url"]),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _controller.data[0]["name"] != null
                  ? Text(_controller.data[0]["name"],
                      style: const TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.bold))
                  : Text(
                      _controller.data[1],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              const SizedBox(
                height: 10,
              ),
              _controller.data[2] != null
                  ? Text(
                      _controller.data[2],
                      style: const TextStyle(
                          color: AppColors.secondary,
                          fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "following",
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _controller.data[3].toString(),
                        style: const TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        "followers",
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _controller.data[4].toString(),
                        style: const TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      const Text(
                        "Repository",
                        style: TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _controller.data[5].toString(),
                        style: const TextStyle(
                            color: AppColors.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
