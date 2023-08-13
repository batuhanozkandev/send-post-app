import 'package:get/get.dart';

class BaseController extends GetxController {
  String? builderId;
  String? errorMessage;
  bool isLoading = false;
  bool isError = false;

  void updateState({
    String? builderId,
    String? errorMessage = '',
    bool isLoading = false,
    bool isError = false,
  }) {
    this.errorMessage = errorMessage;
    this.isLoading = isLoading;
    this.isError = isError;
    update([builderId ?? this.builderId!]);
  }
}
