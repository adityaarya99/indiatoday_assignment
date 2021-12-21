
import 'package:astrotak/model/astro_model.dart';
import 'package:astrotak/repository/astro_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'astro_event.dart';
part 'astro_state.dart';

class AstroBloc extends Bloc<AstroEvent,AstroState>{
     final  _astroRepo = AstroRepo();

  AstroBloc() : super(AstroInitial());

  @override
  Stream<AstroState> mapEventToState(AstroEvent event) async* {
      if(event is FetchAstroData){
        print('iM IN EVENT IS');
        yield* _fetchProfile();
      }
      else if(event is SortData){
      }
  }


    Stream<AstroState> _fetchProfile() async* {
      var entries = await _astroRepo.fetchAll();
      yield AstroLoaded(entries);
    }
}