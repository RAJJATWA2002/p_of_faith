import 'package:get/get.dart';

import '../modules/Cart_screen/bindings/cart_screen_binding.dart';
import '../modules/Cart_screen/views/cart_screen_view.dart';
import '../modules/Delivery_address_screen/bindings/delivery_address_screen_binding.dart';
import '../modules/Delivery_address_screen/views/delivery_address_screen_view.dart';
import '../modules/E_commerce_screen/bindings/e_commerce_screen_binding.dart';
import '../modules/E_commerce_screen/views/e_commerce_screen_view.dart';
import '../modules/Event_details_screen/bindings/event_details_screen_binding.dart';
import '../modules/Event_details_screen/views/event_details_screen_view.dart';
import '../modules/Event_screen/bindings/event_screen_binding.dart';
import '../modules/Event_screen/views/event_screen_view.dart';
import '../modules/Home_screen/bindings/home_screen_binding.dart';
import '../modules/Home_screen/views/home_screen_view.dart';
import '../modules/Prayer_screen/bindings/prayer_screen_binding.dart';
import '../modules/Prayer_screen/views/prayer_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nav_bar_screen/bindings/nav_bar_screen_binding.dart';
import '../modules/nav_bar_screen/views/nav_bar_screen_view.dart';
import '../modules/password_otp_screen/bindings/password_otp_screen_binding.dart';
import '../modules/password_otp_screen/views/password_otp_screen_view.dart';
import '../modules/password_reset_screen/bindings/password_reset_screen_binding.dart';
import '../modules/password_reset_screen/views/password_reset_screen_view.dart';
import '../modules/password_update_screen/bindings/password_update_screen_binding.dart';
import '../modules/password_update_screen/views/password_update_screen_view.dart';
import '../modules/sign_in_screen/bindings/sign_in_screen_binding.dart';
import '../modules/sign_in_screen/views/sign_in_screen_view.dart';
import '../modules/sign_up_screen/bindings/sign_up_screen_binding.dart';
import '../modules/sign_up_screen/views/sign_up_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.NAV_BAR_SCREEN,
      page: () => const NavBarScreenView(),
      binding: NavBarScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN_SCREEN,
      page: () => const SignInScreenView(),
      binding: SignInScreenBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP_SCREEN,
      page: () => const SignUpScreenView(),
      binding: SignUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_RESET_SCREEN,
      page: () => const PasswordResetScreenView(),
      binding: PasswordResetScreenBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_OTP_SCREEN,
      page: () => const PasswordOtpScreenView(),
      binding: PasswordOtpScreenBinding(),
    ),
    GetPage(
      name: _Paths.PASSWORD_UPDATE_SCREEN,
      page: () => const PasswordUpdateScreenView(),
      binding: PasswordUpdateScreenBinding(),
    ),
    GetPage(
      name: _Paths.HOME_SCREEN,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: _Paths.PRAYER_SCREEN,
      page: () => const PrayerScreenView(),
      binding: PrayerScreenBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_SCREEN,
      page: () => const EventScreenView(),
      binding: EventScreenBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_DETAILS_SCREEN,
      page: () => const EventDetailsScreenView(),
      binding: EventDetailsScreenBinding(),
    ),
    GetPage(
      name: _Paths.E_COMMERCE_SCREEN,
      page: () => const ECommerceScreenView(),
      binding: ECommerceScreenBinding(),
    ),
    GetPage(
      name: _Paths.CART_SCREEN,
      page: () => const CartScreenView(),
      binding: CartScreenBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_ADDRESS_SCREEN,
      page: () => const DeliveryAddressScreenView(),
      binding: DeliveryAddressScreenBinding(),
    ),
  ];
}
