import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:medicine_warehouse/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    List<dynamic> data = await Api().get(url: 'put the get url here');

    return data;
  }
}
