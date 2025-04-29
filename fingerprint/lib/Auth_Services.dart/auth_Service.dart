import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';

class AuthService {
  final LocalAuthentication localAuth = LocalAuthentication();

  Future<bool> authenticateLocally() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await localAuth.authenticate(
        localizedReason: "We need to Aurhenticate for using this App",
        options: AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
          useErrorDialogs: true,
          sensitiveTransaction: true,
        ),
      );
    } on PlatformException catch (e) {
      if (e.code == auth_error.notEnrolled) {
      } else if (e.code == auth_error.lockedOut ||
          e.code == auth_error.permanentlyLockedOut) {

      } else {

      }
    } catch (e) {
      print(e.toString());
    }

    return isAuthenticated;
  }
}
