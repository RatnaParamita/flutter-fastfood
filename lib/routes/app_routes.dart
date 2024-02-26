import 'package:fast_food_app/presentation/login_screen/login_screen.dart';
import 'package:fast_food_app/presentation/login_screen/binding/login_binding.dart';
import 'package:fast_food_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:fast_food_app/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:fast_food_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:fast_food_app/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:fast_food_app/presentation/end_screen/end_screen.dart';
import 'package:fast_food_app/presentation/end_screen/binding/end_binding.dart';
import 'package:fast_food_app/presentation/menu_container_screen/menu_container_screen.dart';
import 'package:fast_food_app/presentation/menu_container_screen/binding/menu_container_binding.dart';
import 'package:fast_food_app/presentation/cart_screen/cart_screen.dart';
import 'package:fast_food_app/presentation/cart_screen/binding/cart_binding.dart';
import 'package:fast_food_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:fast_food_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String endScreen = '/end_screen';

  static const String menuPage = '/menu_page';

  static const String menuContainerScreen = '/menu_container_screen';

  static const String cartScreen = '/cart_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: endScreen,
      page: () => EndScreen(),
      bindings: [
        EndBinding(),
      ],
    ),
    GetPage(
      name: menuContainerScreen,
      page: () => MenuContainerScreen(),
      bindings: [
        MenuContainerBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}
