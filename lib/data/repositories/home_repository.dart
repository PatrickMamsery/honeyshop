import '../services/api_client.dart';
import '../models/categories_response.dart';

class HomeRepository {
  final ApiClient api = ApiClient();

  getAllCategories({
    required Function() beforeSend,
    required Function(CategoriesResponse categories) onSuccess,
    required Function(dynamic error) onError,
  }) {
    api.get(
        beforeSend: () {},
        onSuccess: (data) {
          print("step 2");
          print(data);
          onSuccess(CategoriesResponse.fromJson(data));
        },
        onError: (error) {},
        url: "/categories");
  }
}
