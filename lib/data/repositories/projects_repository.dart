import 'package:first_app/data/models/projects_response.dart';
import 'package:first_app/data/services/api_client.dart';

class ProjectsRepository {
  final ApiClient api = ApiClient();

  getAllProjects({
    required Function() beforeSend,
    required Function(ProjectsResponse categories) onSuccess,
    required Function(dynamic error) onError,
  }) {
    api.get(
        beforeSend: () {},
        onSuccess: (data) {
          print(data);
          onSuccess(ProjectsResponse.fromJson(data));
        },
        onError: (error) {},
        url: "/projects");
  }
}
