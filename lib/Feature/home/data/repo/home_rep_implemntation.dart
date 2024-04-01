import 'package:bookly/Feature/home/data/models/books/book_model.dart';
import 'package:bookly/Feature/home/data/repo/home_repo.dart';
import 'package:bookly/core/Failure/failure.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
