import 'package:cinema_lphant/domain/entities/movie.dart';

import 'movies_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// Referencia de todos los providers
final moviesSlideshowProvider = Provider<List<Movie>>((ref) {
  
  final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

  if(nowPlayingMovies.isEmpty) return [];

  return nowPlayingMovies.sublist(0,6);

},);