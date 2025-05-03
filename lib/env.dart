import 'package:envied/envied.dart';
part '../env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'API_KEY', defaultValue: '')
  static String apiKey = _Env.apiKey;

  @EnviedField(varName: 'BASE_URL', defaultValue: '')
  static String baseUrl = _Env.baseUrl;

  @EnviedField(varName: 'PASSWORD_KEY', defaultValue: '', obfuscate: true)
  static String passwordKey = _Env.passwordKey;
}
