import 'package:bloc_consulta_cep/src/app/app_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => const [];

  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const AppPage(),
        ),
      ];
}
