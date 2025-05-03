// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// generated_from: .env
final class _Env {
  static const String apiKey = 'any_api_key';

  static const String baseUrl = 'https://api.unsplash.com';

  static const List<int> _enviedkeypasswordKey = <int>[
    840553765,
    3028887173,
    2366243991,
    2391355074,
    3197825961,
    3351453441,
    2577830485,
    2928676522,
    3913599259,
    1580073500,
    295917137,
    3063315617,
    2653539842,
    1577313890,
    3402049808,
    2504668214,
  ];

  static const List<int> _envieddatapasswordKey = <int>[
    840553796,
    3028887275,
    2366244078,
    2391355037,
    3197826009,
    3351453536,
    2577830438,
    2928676569,
    3913599340,
    1580073587,
    295917091,
    3063315653,
    2653539933,
    1577313801,
    3402049909,
    2504668239,
  ];

  static final String passwordKey = String.fromCharCodes(List<int>.generate(
    _envieddatapasswordKey.length,
    (int i) => i,
    growable: false,
  ).map((int i) => _envieddatapasswordKey[i] ^ _enviedkeypasswordKey[i]));
}
