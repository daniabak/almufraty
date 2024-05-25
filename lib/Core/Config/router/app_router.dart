import 'package:go_router/go_router.dart';
import 'package:mufraty_app/Core/Config/storage/getit.dart';
import 'package:mufraty_app/feature/Auth/login/view/login_view.dart';
import 'package:mufraty_app/feature/Auth/register/view/register_page.dart';
import 'package:mufraty_app/feature/Home/view/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRouter {
  static const kLoginView = '/loginView';
  static const kRigesterView = '/rigesterView';
  static const kHomeViewStock = '/HomeStock';
  static const KHomeViewFatoraNew = '/HomeViewFatoraNew';
  static const KHomeViewFatoraCombleteDelivery='/HomeViewFatoraCombleteDelivery';
  static const KHomeViewFatoraCancel='/HomeViewFatoraCancel';
  static const kHomeViewFatoraNotRecieved='/HomeViewFatoraNotRecieved';
  static const KHomeViewFatoraBrebaring='/HomeViewFatoraBrebaring';
  static final routter = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const LoginView()),
    GoRoute(
      path: kRigesterView,
      builder: (context, state) => const SignUp(),
    ),
    
    GoRoute(
      path: kHomeViewStock,
      builder: (context, state) => HomePage(
        currentIndex: 1,
        init: 0,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
     GoRoute(
      path: KHomeViewFatoraNew,
      builder: (context, state) => HomePage(
        currentIndex: 0,
        init: 0,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
     GoRoute(
      path: KHomeViewFatoraCombleteDelivery,
      builder: (context, state) => HomePage(
        currentIndex: 0,
        init: 2,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
     GoRoute(
      path: KHomeViewFatoraCancel,
      builder: (context, state) => HomePage(
        currentIndex: 0,
        init: 4,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
    GoRoute(
      path: kHomeViewFatoraNotRecieved,
      builder: (context, state) => HomePage(
        currentIndex: 0,
        init: 3,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
    GoRoute(
      path: KHomeViewFatoraBrebaring,
      builder: (context, state) => HomePage(
        currentIndex: 0,
        init: 1,
        storNamr: storage.get<SharedPreferences>().getString('store_name'),
      ),
    ),
  ]);
}
