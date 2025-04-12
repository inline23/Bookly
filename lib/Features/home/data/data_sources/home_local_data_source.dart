import 'package:bookly_app/Features/home/domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks() {
    
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBooks() {
   
    throw UnimplementedError();
  }
  
}
