import 'dart:async';
import 'dart:io';
import 'package:dart_frog/dart_frog.dart';
// import 'package:product_repository/product_repository.dart';

FutureOr<Response> onRequest(RequestContext context) async {
  switch (context.request.method) {
    case HttpMethod.get:
      return _get(context);
    case HttpMethod.post:
    case HttpMethod.delete:
    case HttpMethod.head:
    case HttpMethod.options:
    case HttpMethod.patch:
    case HttpMethod.put:
      return Response(statusCode: HttpStatus.methodNotAllowed);
  }
}

Future<Response> _get(RequestContext context) async {
  // final productRepository = context.read<ProductRepository>();
  // final products = await productRepository.getTrendingProducts();
  // return Response.json(body: products);
  return Response.json(body: []);
}
