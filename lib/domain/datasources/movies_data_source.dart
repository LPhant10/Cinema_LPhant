/* abstac cuando no se quiere instancias de ella
aqui en el data source definimos como lucen los origenes de datos  que
pueden trar peliculas pueden ser de MovieDB u otro, mi API propia, de un 
Json, de donde sea.
Definiremos los metodos que estas clases tendran o que puedo llamar para
traer esa data*/

import 'package:cinema_lphant/domain/entities/movie.dart';

abstract class MoviesDataSource {

  Future<List<Movie>> getNowPlating({int page = 1});


}
