import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medicine_warehouse/helper/api.dart';

class SearchCategoryService {
  Future<List<dynamic>> getSearchCategory({required String category}) async {
    List<String> data = await Api().get(url: 'put the get url here');

    return data;
  }
}
