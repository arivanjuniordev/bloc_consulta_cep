import 'package:dartz/dartz.dart';

import '../../../core/helpers/errors/failure.dart';
import '../entities/cep_entity.dart';

abstract class GetCepUsecase {
  Future<Either<Failure, CepEntity>> call(String cep);
}
