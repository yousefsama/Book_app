import 'package:bookly/Feature/home/data/models/books/book_model.dart';
import 'package:bookly/Feature/home/data/repo/home_repo.dart';
import 'package:bookly/core/Failure/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'volumes?Filtering=free-ebooks&Sorting=newest&q=subject:programming');

      List<BookModel> Books = [];
      for (var item in data["items"]) {
        Books.add(BookModel.fromJson(item));
      }
      return right(Books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
