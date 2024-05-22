import '../weekly_challenge_screen/core/app_export.dart';
import '../weekly_challenge_screen/presentation/weekly_challenge_screen/controller/weekly_challenge_controller.dart';

/// A binding class for the WeeklyChallengeScreen.
///
/// This class ensures that the WeeklyChallengeController is created when the
/// WeeklyChallengeScreen is first loaded.
class WeeklyChallengeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WeeklyChallengeController());
  }
}
