import 'package:bookly/Feature/Splash/presentation/Views/Splash_View.dart';
import 'package:bookly/Feature/home/presentaion/Views/Book_details_Veiw.dart';
import 'package:bookly/Feature/home/presentaion/Views/home_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static String homeView = '/HomeView';
  static String bookdetailsView = '/detailsview';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: bookdetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
