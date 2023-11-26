import 'package:medicine_warehouse/helper/api.dart';
import 'package:medicine_warehouse/models/medicine_model.dart';

class SearchMedicinesService {
  Future<List<MedicineModel>> getSearchMedicines(
      {required String medicine}) async {
    List<dynamic> data =
        await Api().get(url: 'put the get url here with medicin');

    List<MedicineModel> medicinesList = [];
    for (int i = 0; i < data.length; i++) {
      medicinesList.add(
        MedicineModel.fromJson(data[i]),
      );
    }
    return medicinesList;
  }
}
