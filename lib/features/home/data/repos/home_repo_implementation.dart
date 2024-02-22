import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_sevice.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImple extends HomeRepo {
  final ApiService apiService;

  HomeRepoImple(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      List<BookModel> book = [];
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:programming");
      for (var item in data["items"]) {
        book.add(BookModel.fromJson(item));
      }
      return right(book);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeatureBooks() {
    throw UnimplementedError();
  }
}
