class CepEndpoints {
  const CepEndpoints._();

  static String getCep(String cep) => '$baseUrl/{$cep}/$typeReturn/';
  static String baseUrl() => 'viacep.com.br/ws';
  static String typeReturn() => 'json';
}
