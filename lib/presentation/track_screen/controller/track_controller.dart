import 'package:abdullah_s_application1/core/app_export.dart';
import 'package:abdullah_s_application1/presentation/track_screen/models/track_model.dart';

class TrackController extends GetxController {
  Rx<TrackModel> trackModelObj = TrackModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
