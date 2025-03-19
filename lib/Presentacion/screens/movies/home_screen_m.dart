//import 'package:cinema_lphant/config/constants/environment.dart';
import 'package:cinema_lphant/Presentacion/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenM extends StatelessWidget {

  // ruta de salida de HomeScreeM
  static const name = 'home-screen-m';

  const HomeScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Hola Luis'),),
      body: _HomeView()
      /* Center(
        child: Text(Environment.theMovieDBkey),
      ) */
    );
}
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {

  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();

    // ref(//.notifies).loadNextPage()
    
  }

  @override
  Widget build(BuildContext context) {


    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);

    // if (nowPlayingMovies.length == 0) return CircularProgressIndicator();

    return ListView.builder(
      itemCount: nowPlayingMovies.length,
      itemBuilder: (context, index) {
        final movie = nowPlayingMovies[index];
        return ListTile(
          title: Text(movie.title),
        );
      },
    );
  }
}