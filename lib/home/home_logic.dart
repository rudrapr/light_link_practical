import 'package:get/get.dart';
import 'package:light_link_practical/console.dart';
import 'package:light_link_practical/models/company_model.dart';
import 'package:light_link_practical/services/api_service.dart';

class HomeLogic extends GetxController {
  int lastPageNo = 0;
  int _numElements = 20;

  ApiService _service = ApiService();

  var list = <CompanyModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getFirstPage();
  }

  void getFirstPage() async {
    list.addAll(await _service.getList(1));
  }

  void getNextPage(int index) async {
    index = index + 1;
    Console.log(index);
    int pageNo = index ~/ _numElements;
    Console.log(pageNo);
    if (pageNo > lastPageNo) {
      Console.log('calling api$pageNo');
      list.addAll(await _service.getList(pageNo));
      lastPageNo = pageNo;
    }
  }
}
