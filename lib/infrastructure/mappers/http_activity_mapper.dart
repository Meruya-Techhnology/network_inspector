import '../../domain/entities/http_activity.dart';
import '../../network_inspector_infrastructure.dart';
import 'http_request_mapper.dart';
import 'http_response_mapper.dart';

class HttpActivityMapper {
  static HttpActivity toEntity(HttpActivityModel model) {
    return HttpActivity(
      request: (model.request != null)
          ? HttpRequestMapper.toEntity(model.request!)
          : null,
      response: (model.response != null)
          ? HttpResponseMapper.toEntity(model.response!)
          : null,
    );
  }

  static HttpActivityModel toModel(HttpActivity entity) {
    return HttpActivityModel(
      request: (entity.request != null)
          ? HttpRequestMapper.toModel(entity.request!)
          : null,
      response: (entity.response != null)
          ? HttpResponseMapper.toModel(entity.response!)
          : null,
    );
  }
}
