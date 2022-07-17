import 'package:equatable/equatable.dart';

abstract class CepEvent extends Equatable {
  final String cep;

  const CepEvent({required this.cep});
}

class GetCepEvent extends CepEvent {
  const GetCepEvent({required String cep}) : super(cep: cep);

  @override
  List<Object?> get props => [cep];
}
