import 'package:send_post_app/core/utils/snack_bar/show_custom_snack_bar.dart';

class FirebaseErrorHandler {
  static void handleAuthError(String? error) {
    switch (error) {
      case 'user-not-found':
        showCustomSnackBar(message: 'User not found!');
        break;
      case 'wrong-password':
        showCustomSnackBar(message: 'Wrong password!');
        break;
      case 'weak-password':
        showCustomSnackBar(message: 'Password is weak!');
        break;
      case 'email-already-in-use':
        showCustomSnackBar(message: 'This email is already in use!');
        break;
      default:
        showCustomSnackBar(message: 'Error!');
    }
  }
}
