import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/app-routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            kLogo,
            width: 55,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouters.searchview);
              },
              icon: const Icon(
                Icons.search,
                size: 20,
              )),
        ],
      ),
    );
  }
}
