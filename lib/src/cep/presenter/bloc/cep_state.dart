import 'package:equatable/equatable.dart';

import '../../domain/entities/cep_entity.dart';

abstract class CepState extends Equatable {}

class CepSuccessState implements CepState {
  final CepEntity cep;

  const CepSuccessState(this.cep);

  @override
  List<Object?> get props => [cep];

  @override
  bool? get stringify => true;
}

class CepEmptyState implements CepState {
  final CepEntity cepEntity = CepEntity.empty();

  @override
  List<Object?> get props => [cepEntity];

  @override
  bool? get stringify => true;
}

class CepLoadingState implements CepState {
  @override
  List<Object?> get props => [];

  @override
  bool? get stringify => true;
}

class CepErrorState implements CepState {
  final String message;

  const CepErrorState(this.message);

  @override
  List<Object?> get props => [message];

  @override
  bool? get stringify => true;
}
