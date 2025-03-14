/* Los respositorios son los que llamaran al data surce,
   El repositorio me permitira cambiar el data source el origenes
   de datos  */

import 'package:cinema_lphant/domain/entities/movie.dart';

abstract class MoviesRepository {

  Future<List<Movie>> getNowPlating({int page = 1});


}
