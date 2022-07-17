import 'failure.dart';

class DatasourceFailure extends Failure {
  DatasourceFailure({required String message, required StackTrace stackTrace})
      : super(message: message, stackTrace: stackTrace);
}
