import 'http_request_model.dart';
import 'http_response_model.dart';

class HttpActivityModel {
  final HttpRequestModel? request;
  final HttpResponseModel? response;

  HttpActivityModel({
    this.request,
    this.response,
  });
}
