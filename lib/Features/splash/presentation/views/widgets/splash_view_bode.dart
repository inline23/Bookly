import 'package:bookly_app/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBode extends StatefulWidget {
  const SplashViewBode({super.key});

  @override
  State<SplashViewBode> createState() => _SplashViewBodeState();
}

//                                                          to handle read of valus changes
class _SplashViewBodeState extends State<SplashViewBode>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimition;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();

    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => HomeView() , transition: Transition.fade , duration: kTransitionDuration );
      // ignore: use_build_context_synchronously
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimition = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
        ),
        SlidingText(slidingAnimition: slidingAnimition)
      ],
    );
  }
}
