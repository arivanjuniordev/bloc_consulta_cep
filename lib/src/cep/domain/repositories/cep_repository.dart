import 'package:dartz/dartz.dart';

import '../../../core/helpers/errors/failure.dart';
import '../entities/cep_entity.dart';

abstract class CepRepository {
  Future<Either<Failure, CepEntity>> getCep(String cep);
}
