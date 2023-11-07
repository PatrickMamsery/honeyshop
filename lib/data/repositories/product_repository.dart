import 'package:first_app/data/services/api_client.dart';
import '../models/product_response.dart';
import '../models/order_response.dart';

class ProjectRepository {
  final ApiClient api = ApiClient();
  getProject(
      {required Function() beforeSend,
      required Function(ProductResponse project) onSuccess,
      required Function(dynamic error) onError,
      required int id}) {
    api.get(
        beforeSend: () {},
        onSuccess: (data) {
          print(data);
          onSuccess(ProductResponse.fromJson(data));
        },
        onError: (error) {},
        url: '/projects/$id');
  }

  void submitOrder({
    required Function() beforeSend,
    required Function(bool status) onSuccess,
    required Function(dynamic error) onError,
    required dynamic data,
  }) {
    api.post(
        beforeSend: () {},
        onSuccess: (data) {
          OrderResponse response = OrderResponse.fromJson(data);
          onSuccess(response.success!);
        },
        onError: (data) {},
        url: "/order",
        data: data);
  }
}
