import '../entities/user_entity.dart';
import '../interfaces/auth_repository.dart';

class LoginUsecase {
  final AuthRepository repository;
  LoginUsecase(this.repository);
  Future<UserEntity> execute(String email, String password) async {
    final user = await repository.login(email, password);
    return user;
  }
}
