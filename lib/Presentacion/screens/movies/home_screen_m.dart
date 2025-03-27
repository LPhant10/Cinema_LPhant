//import 'package:cinema_lphant/config/constants/environment.dart';
import 'package:cinema_lphant/Presentacion/providers/providers.dart';
import 'package:cinema_lphant/Presentacion/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenM extends StatelessWidget {

  // ruta de salida de HomeScreeM
  static const name = 'home-screen-m';

  const HomeScreenM({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: _HomeView(),

      bottomNavigationBar: CustomBottonNavigation(),

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
    ref.read(popularMoviesProvider.notifier).loadNextPage();
    ref.read(upcomingMoviesProvider.notifier).loadNextPage();
    ref.read(topRateMoviesProvider.notifier).loadNextPage();
    

    // ref(//.notifies).loadNextPage()
    
  }

  @override
  Widget build(BuildContext context) {

    final initialLoading = ref.watch(initialLoadingProvider);

    if(initialLoading) return FullScreenLoader();


    final slideShowMovies = ref.watch(moviesSlideshowProvider);
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final upcomingMovies = ref.watch(upcomingMoviesProvider);
    final topRateMovies = ref.watch(topRateMoviesProvider);

    // if (nowPlayingMovies.length == 0) return CircularProgressIndicator();
  
    return CustomScrollView(

      slivers: [

        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAbbbar(),
          ),
        ),

        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
        children: [
      
           // const CustomAbbbar (),
      
          MoviesSlideshow(
            movies: slideShowMovies),
      
            MovieHorizontalListview(
              movies: nowPlayingMovies,
              title: 'En Cines',
              subTitle: 'Sabado 22',
              loadNextPage: () {
                ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
              },
              ),
      
              MovieHorizontalListview(
              movies: upcomingMovies,
              title: 'Proximamente',
              subTitle: 'En este mes ',
              loadNextPage: () {
                ref.read(upcomingMoviesProvider.notifier).loadNextPage();
              },
              ),
      
              MovieHorizontalListview(
              movies: popularMovies,
              title: 'Populares',
              //subTitle: 'En este mes ',
              loadNextPage: () {
                ref.read(popularMoviesProvider.notifier).loadNextPage();
              },
              ),
      
              MovieHorizontalListview(
              movies: topRateMovies,
              title: 'Mejor Calificadas',
              subTitle: 'Desde siempre',
              loadNextPage: () {
                ref.read(topRateMoviesProvider.notifier).loadNextPage();
              },
              ),

              SizedBox(height: 10,)

          /*  Expanded(
             child: ListView.builder(
              itemCount: nowPlayingMovies.length,
              itemBuilder: (context, index) {
               final movie = nowPlayingMovies[index];
                return ListTile(
                   title: Text(movie.title),
                     );
                   },
                 ),
           ) */
        ],
      );
          },
          childCount: 1
          ))


      ]
    );
  }
}