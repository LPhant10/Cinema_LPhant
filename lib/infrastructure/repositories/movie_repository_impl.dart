import 'package:cinema_lphant/domain/datasources/movies_data_source.dart';
import 'package:cinema_lphant/domain/entities/movie.dart';
import 'package:cinema_lphant/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {

  final MoviesDataSource dataSource;
  MovieRepositoryImpl({required this.dataSource});



  @override
  Future<List<Movie>> getNowPlating({int page = 1}) {
    return dataSource.getNowPlating(page: page);
   
  }

}