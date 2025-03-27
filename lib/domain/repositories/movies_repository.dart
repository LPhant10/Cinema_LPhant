/* Los respositorios son los que llamaran al data surce,
   El repositorio me permitira cambiar el data source el origenes
   de datos  */

import 'package:cinema_lphant/domain/entities/movie.dart';

abstract class MoviesRepository {

  Future<List<Movie>> getNowPlaying({int page = 1});
  Future<List<Movie>> getPopular({int page = 1});
  Future<List<Movie>> getUpcoming({int page = 1});
  Future<List<Movie>> getTopRated({int page = 1});

  


}
