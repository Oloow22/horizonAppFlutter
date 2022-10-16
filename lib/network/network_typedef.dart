import 'network_enums.dart';


typedef NetworkCallBack<R> = R Function(dynamic);
typedef NetworkFailureCallBackWithMessage<R> = R Function(
  NetworkResponseErrorType, String?
); 