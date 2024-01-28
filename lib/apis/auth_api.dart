import 'package:gmu_app/core/core.dart';
import 'package:gmu_app/models/user_model.dart';

abstract class IAuthAPI {
  FutureEither<UserModel> signup({
    required String name,
    required String username,
    required String email,
    required String password,
  });
}
