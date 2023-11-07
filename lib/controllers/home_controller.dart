import 'package:first_app/data/models/categories_response.dart';
import 'package:first_app/data/models/projects_response.dart';
import 'package:first_app/data/repositories/projects_repository.dart';
import 'package:get/get.dart';
// import '../data/services/api_client.dart';
// import '../data/models/categories_response.dart';
import '../data/repositories/home_repository.dart';

class HomeController extends GetxController {
  RxList<Category> categories = <Category>[].obs;
  RxList<Project> projects = <Project>[].obs;
  @override
  void onInit() {
    var _homeRepo = HomeRepository();
    var _projectRepo = ProjectsRepository();

    _homeRepo.getAllCategories(
        beforeSend: () {},
        onSuccess: (res) {
          print("step 1");
          print(res.data![0].title!);
          categories.addAll(res.data!);
        },
        onError: (error) {}); // var data = CategoriesResponse.fromJson(res);
    // print(data.data![0].description);
    _projectRepo.getAllProjects(
        beforeSend: () {},
        onSuccess: (res) {
          projects.addAll(res.data!);
        },
        onError: (error) {});
    super.onInit();
  }
}
