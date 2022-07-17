import '../../domain/entities/cep_entity.dart';

class CepMapper {
  CepEntity fromJson(Map<String, dynamic> json) {
    return CepEntity(
      cep: json['cep'],
      logradouro: json['logradouro'],
      complemento: json['complemento'],
      bairro: json['bairro'],
      localidade: json['localidade'],
      uf: json['uf'],
      ibge: json['ibge'],
      gia: json['gia'],
      ddd: json['ddd'],
      siafi: json['siafi'],
    );
  }

  Map<String, dynamic> toJson(CepEntity cep) {
    return {
      'cep': cep.cep,
      'logradouro': cep.logradouro,
      'complemento': cep.complemento,
      'bairro': cep.bairro,
      'localidade': cep.localidade,
      'uf': cep.uf,
      'ibge': cep.ibge,
      'gia': cep.gia,
      'ddd': cep.ddd,
      'siafi': cep.siafi,
    };
  }
}
