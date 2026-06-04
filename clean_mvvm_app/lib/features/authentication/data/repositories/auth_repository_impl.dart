import '../../domain/entities/user_entity.dart';
import '../../domain/interfaces/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<UserEntity> login(String email, String password) async {
    return UserEntity(
      id: "1",
      email: "nguyendangchanell@gmail.com",
      name: "Huỳnh Nguyễn Đăng",
    );
  }
}
