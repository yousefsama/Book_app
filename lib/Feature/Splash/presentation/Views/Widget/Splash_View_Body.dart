import 'package:bookly/Feature/Splash/presentation/Views/Widget/Animation_Text.dart';
import 'package:bookly/constance.dart';
import 'package:bookly/core/utils/app-routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initAnimation();

    navigationToHomePageUsingGEtx();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          kLogo,
        ),
        TextAnimation(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigationToHomePageUsingGEtx() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        GoRouter.of(context).push(AppRouters.homeView);
        // Get.to(() => const HomeView(),
        //     transition: Transition.fadeIn,
        //     duration: const Duration(seconds: 1));
      },
    );
  }
}
