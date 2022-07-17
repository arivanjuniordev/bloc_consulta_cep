import 'package:dartz/dartz.dart';

import '../../../core/helpers/errors/failure.dart';
import '../entities/cep_entity.dart';
import '../repositories/cep_repository.dart';
import 'get_cep_usecase.dart';

class GetCepUsecaseImpl implements GetCepUsecase {
  final CepRepository _cepRepository;

  const GetCepUsecaseImpl(this._cepRepository);

  @override
  Future<Either<Failure, CepEntity>> call(String cep) async {
    final result = await _cepRepository.getCep(cep);
    return result;
  }
}
