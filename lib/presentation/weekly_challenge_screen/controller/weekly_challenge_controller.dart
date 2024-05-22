import '../weekly_challenge_screen/core/app_export.dart';
import '../weekly_challenge_screen/presentation/weekly_challenge_screen/models/weekly_challenge_model.dart';

/// A controller class for the WeeklyChallengeScreen.
///
/// This class manages the state of the WeeklyChallengeScreen, including the
/// current weeklyChallengeModelObj
class WeeklyChallengeController extends GetxController {
  Rx<WeeklyChallengeModel> weeklyChallengeModelObj = WeeklyChallengeModel().obs;
}
