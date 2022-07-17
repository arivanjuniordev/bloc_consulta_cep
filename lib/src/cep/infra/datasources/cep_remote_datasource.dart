import '../../domain/entities/cep_entity.dart';

abstract class CepRemoteDatasource {
  Future<CepEntity> fetch(String cep);
}
