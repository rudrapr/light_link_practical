import 'package:dio/dio.dart';
import 'package:light_link_practical/models/company_model.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService(){

  }


  Future getList(int page) async {
    final uri = Uri.parse(
        "https://www.devops.tileswale.com/api/v26/company_list_by_category");
    var res = await _dio.postUri(uri,
        data: FormData.fromMap({"mode": "listing", "page": page}));
    if (res.statusCode == 200) {
      return res.data['results']['data']
          .map<CompanyModel>((json) => CompanyModel.fromJson(json))
          .toList();
    } else {
      throw Exception(res.data['result']['message']);
    }
  }
}
