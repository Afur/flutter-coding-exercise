import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:spa_coding_exercise/services/location_service.dart';
import 'package:spa_coding_exercise/services/map_box_service.dart';
import 'package:spa_coding_exercise/values/app_errors.dart';

part 'lookup_bloc.freezed.dart';

class LookupBloc extends Bloc<LookupEvent, LookupState> {
  final LocationService locationService;

  LookupBloc(this.locationService) : super(LookupState.empty());

  @override
  Stream<LookupState> mapEventToState(LookupEvent event) => event.when(
        search: (query) => _search(query),
        locate: () => _locate()
      );

  Stream<LookupState> _search(String query) async* {
    var places = await MapBoxService.searchPlaces(query);
    yield state.copyWith(places: places ?? []);
  }

  Stream<LookupState> _locate() async* {
    yield state.copyWith(isLocating: true);
    yield await locationService.getPosition().then((response) => response.fold(
        (error) => state.copyWith(isLocating: false, error: error),
        (position) => _findNearTo(position)));
  }

  Future<LookupState> _findNearTo(Position position) async {
    var place =
        await MapBoxService.lookup(position.latitude, position.longitude);
    return state.copyWith(isLocating: false, places: [place] ?? []);
  }
}

@freezed
abstract class LookupState implements _$LookupState {
  const factory LookupState({
    bool isLocating,
    AppError error,
    List<MapBoxPlace> places,
  }) = _LookupState;

  const LookupState._();

  factory LookupState.empty() => LookupState(
        isLocating: false,
        places: [],
      );
}

@freezed
abstract class LookupEvent with _$LookupEvent {
  const factory LookupEvent.search(String query) = Search;

  const factory LookupEvent.locate() = Locate;
}
