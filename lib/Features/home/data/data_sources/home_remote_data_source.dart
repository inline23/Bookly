import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/functions/save_books.dart';
import 'package:hive_flutter/adapters.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;
  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntity>> fetchFeatureBooks() async {
    var data = await apiService.get(
        endPoint:
            'volumes?q=programming:keyes&key=AIzaSyDr0B91qJY1wAPA8saY8MUCgcnH8Mmo00U');

    List<BookEntity> books = getBooksList(data);

    saveBooksData(books, kFeaturedBox);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint:
            'volumes?q=programming&sorting=newest:keyes&key=AIzaSyDr0B91qJY1wAPA8saY8MUCgcnH8Mmo00U');

    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data['items']) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }
}
