import 'package:cinema_lphant/domain/datasources/movies_data_source.dart';
import 'package:cinema_lphant/domain/entities/movie.dart';
import 'package:cinema_lphant/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository{

  final MoviesDataSource datasource;
  MovieRepositoryImpl(this.datasource);


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    
    return datasource.getNowPlating(page: page);
  }
  
  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return datasource.getPopular(page: page);
  }

}