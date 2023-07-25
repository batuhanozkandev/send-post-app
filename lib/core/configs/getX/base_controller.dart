import 'package:get/get.dart';

class BaseController extends GetxController {
  String? builderId;
  String? errorMessage;
  bool? isLoading;
  bool? isError;

  void updateState({
    String? builderId,
    String? errorMessage = '',
    bool? isLoading = false,
    bool? isError = false,
  }) {
    this.builderId = builderId;
    this.errorMessage = errorMessage;
    this.isLoading = isLoading;
    this.isLoading = isError;
    update([builderId ?? this.builderId!]);
  }
}
