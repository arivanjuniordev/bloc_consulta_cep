import 'package:dio/dio.dart';

import '../../../core/helpers/errors/datasource_failure.dart';
import '../../../core/helpers/errors/failure.dart';
import '../../../core/helpers/external/cep_endpoints.dart';
import '../../domain/entities/cep_entity.dart';
import '../../infra/datasources/cep_remote_datasource.dart';
import '../mappers/cep_mapper.dart';

class CepRemoteDatasourceImpl implements CepRemoteDatasource {
  final Dio _client;

  const CepRemoteDatasourceImpl(this._client);

  @override
  Future<CepEntity> fetch(String cep) async {
    try {
      final result = await _client.get(CepEndpoints.getCep(cep));
      final data = CepMapper().fromJson(result.data);

      return data;
    } on Failure {
      rethrow;
    } catch (error, stackTrace) {
      DatasourceFailure(message: error.toString(), stackTrace: stackTrace);
    }
    return CepEntity.empty();
  }
}
