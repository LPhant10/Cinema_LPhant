/* Especializado y nace para interactuar unicamente con moviedb */

import 'package:cinema_lphant/config/constants/environment.dart';
import 'package:cinema_lphant/domain/datasources/movies_data_source.dart';
import 'package:cinema_lphant/domain/entities/movie.dart';
import 'package:cinema_lphant/infrastructure/mappers/movie_mapper.dart';
import 'package:cinema_lphant/infrastructure/models/MovieDB/moviedb_response.dart';
import 'package:dio/dio.dart';

class MoviedbDatasource extends MoviesDataSource{

  final dio = Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3',
    queryParameters: {
      'api_key': Environment.theMovieDBkey,
      'language': 'es-MX'
    }
  ));

  
  @override
  Future<List<Movie>> getNowPlating({int page = 1}) async {

   final response = await dio.get('/movie/now_playing');

   final movieDBResponse = MovieDbResponse.fromJson(response.data);


   final List<Movie> movies = movieDBResponse.results
   .where((moviedb) => moviedb.posterPath != 'no-posster')
   .map(
    (moviedb) => MovieMapper.movieDBToEntity(moviedb)
   ).toList();

   return movies;
  }



}