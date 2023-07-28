part of 'home_cubit.dart';

enum HomeStatus { loading, success, error }

class HomeState {
  HomeState({this.status = HomeStatus.loading, this.gifs = const <GifModel>[]});
  final HomeStatus status;
  final List<GifModel> gifs;

  HomeState copyWith({
    HomeStatus? status,
    List<GifModel>? gifs,
  }) {
    return HomeState(status:  status ?? this.status,gifs: gifs ?? this.gifs);
  }
}

/*
Acá manejamos los 3 casos: Cargando, exito y error 
El Fetch 
Servicio a la API,
Repositorio usa el Servicio
Cubit usa el repositorio
*/
