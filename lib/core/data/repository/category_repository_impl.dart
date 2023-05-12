import 'dart:developer';

import 'package:dio/dio.dart';

import '../../consts/api_constants.dart';
import '../../domain/repository/category_repository.dart';
import '../models/category_model.dart';

class CategoryRepositoryImpl extends CategoryRepository {
  final Dio dio;

  CategoryRepositoryImpl({
    required this.dio,
  });
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final response = await dio.get(ApiConstants.shopAPIUrlGetAllCategories);
    final data = response.data;
    List<CategoryModel> categoryList = [];
    for (String i in data) {
      categoryList.add(CategoryModel(name: i));
    }
    log(categoryList.length.toString());
    return categoryList;
  }
}
