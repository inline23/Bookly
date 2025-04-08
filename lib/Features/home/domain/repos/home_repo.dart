import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeatureBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}
