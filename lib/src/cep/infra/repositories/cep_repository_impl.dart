import 'package:dartz/dartz.dart';

import '../../../core/helpers/errors/failure.dart';
import '../../domain/entities/cep_entity.dart';
import '../../domain/repositories/cep_repository.dart';
import '../datasources/cep_remote_datasource.dart';

class CepRepositoryImpl implements CepRepository {
  final CepRemoteDatasource _cepRemoteDatasource;

  const CepRepositoryImpl(this._cepRemoteDatasource);

  @override
  Future<Either<Failure, CepEntity>> getCep(String cep) async {
    try {
      final result = await _cepRemoteDatasource.fetch(cep);
      return Right(result);
    } on Failure catch (failure) {
      return Left(failure);
    }
  }
}
