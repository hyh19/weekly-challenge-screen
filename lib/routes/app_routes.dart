import '../core/app_export.dart';
import '../presentation/weekly_challenge_screen/binding/weekly_challenge_binding.dart';
import '../presentation/weekly_challenge_screen/weekly_challenge_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String weeklyChallengeScreen = '/weekly_challenge_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: weeklyChallengeScreen,
      page: () => WeeklyChallengeScreen(),
      bindings: [WeeklyChallengeBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => WeeklyChallengeScreen(),
      bindings: [WeeklyChallengeBinding()],
    )
  ];
}
