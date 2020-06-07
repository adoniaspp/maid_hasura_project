import 'package:alice/app/repositories/api_user_repository.dart';
import 'package:alice/app/services/user_service_interface.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockUserService extends Mock implements IUserService {}

void main() {
  group("user_services", () {
    test("return id of user created", () async {
      final userService = MockUserService();
      final userRepository = ApiUserRepository(userService);
      when(userService.createUser({
        "usuario": {
          "nome_completo": "Adonias Pires",
          "email": "adoniaspp@gmail.com",
          "data_nascimento": "1986-12-29",
          "numero_celular": "91988219977",
          "usuario": "adoniaspp"
        }
      })).thenAnswer((_) async => 5);
      expect(
          await userRepository.createUser({
            "usuario": {
              "nome_completo": "Adonias Pires",
              "email": "adoniaspp@gmail.com",
              "data_nascimento": "1986-12-29",
              "numero_celular": "91988219977",
              "usuario": "adoniaspp"
            }
          }),
          5);
    });
  });
}
