// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lookup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LookupStateTearOff {
  const _$LookupStateTearOff();

// ignore: unused_element
  _LookupState call(
      {bool isLocating, AppError error, List<MapBoxPlace> places}) {
    return _LookupState(
      isLocating: isLocating,
      error: error,
      places: places,
    );
  }
}

// ignore: unused_element
const $LookupState = _$LookupStateTearOff();

mixin _$LookupState {
  bool get isLocating;
  AppError get error;
  List<MapBoxPlace> get places;

  $LookupStateCopyWith<LookupState> get copyWith;
}

abstract class $LookupStateCopyWith<$Res> {
  factory $LookupStateCopyWith(
          LookupState value, $Res Function(LookupState) then) =
      _$LookupStateCopyWithImpl<$Res>;
  $Res call({bool isLocating, AppError error, List<MapBoxPlace> places});
}

class _$LookupStateCopyWithImpl<$Res> implements $LookupStateCopyWith<$Res> {
  _$LookupStateCopyWithImpl(this._value, this._then);

  final LookupState _value;
  // ignore: unused_field
  final $Res Function(LookupState) _then;

  @override
  $Res call({
    Object isLocating = freezed,
    Object error = freezed,
    Object places = freezed,
  }) {
    return _then(_value.copyWith(
      isLocating:
          isLocating == freezed ? _value.isLocating : isLocating as bool,
      error: error == freezed ? _value.error : error as AppError,
      places: places == freezed ? _value.places : places as List<MapBoxPlace>,
    ));
  }
}

abstract class _$LookupStateCopyWith<$Res>
    implements $LookupStateCopyWith<$Res> {
  factory _$LookupStateCopyWith(
          _LookupState value, $Res Function(_LookupState) then) =
      __$LookupStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLocating, AppError error, List<MapBoxPlace> places});
}

class __$LookupStateCopyWithImpl<$Res> extends _$LookupStateCopyWithImpl<$Res>
    implements _$LookupStateCopyWith<$Res> {
  __$LookupStateCopyWithImpl(
      _LookupState _value, $Res Function(_LookupState) _then)
      : super(_value, (v) => _then(v as _LookupState));

  @override
  _LookupState get _value => super._value as _LookupState;

  @override
  $Res call({
    Object isLocating = freezed,
    Object error = freezed,
    Object places = freezed,
  }) {
    return _then(_LookupState(
      isLocating:
          isLocating == freezed ? _value.isLocating : isLocating as bool,
      error: error == freezed ? _value.error : error as AppError,
      places: places == freezed ? _value.places : places as List<MapBoxPlace>,
    ));
  }
}

class _$_LookupState extends _LookupState {
  const _$_LookupState({this.isLocating, this.error, this.places}) : super._();

  @override
  final bool isLocating;
  @override
  final AppError error;
  @override
  final List<MapBoxPlace> places;

  @override
  String toString() {
    return 'LookupState(isLocating: $isLocating, error: $error, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LookupState &&
            (identical(other.isLocating, isLocating) ||
                const DeepCollectionEquality()
                    .equals(other.isLocating, isLocating)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLocating) ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(places);

  @override
  _$LookupStateCopyWith<_LookupState> get copyWith =>
      __$LookupStateCopyWithImpl<_LookupState>(this, _$identity);
}

abstract class _LookupState extends LookupState {
  const _LookupState._() : super._();
  const factory _LookupState(
      {bool isLocating,
      AppError error,
      List<MapBoxPlace> places}) = _$_LookupState;

  @override
  bool get isLocating;
  @override
  AppError get error;
  @override
  List<MapBoxPlace> get places;
  @override
  _$LookupStateCopyWith<_LookupState> get copyWith;
}

class _$LookupEventTearOff {
  const _$LookupEventTearOff();

// ignore: unused_element
  Search search(String query) {
    return Search(
      query,
    );
  }

// ignore: unused_element
  Locate locate() {
    return const Locate();
  }
}

// ignore: unused_element
const $LookupEvent = _$LookupEventTearOff();

mixin _$LookupEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result search(String query),
    @required Result locate(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result search(String query),
    Result locate(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result search(Search value),
    @required Result locate(Locate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result search(Search value),
    Result locate(Locate value),
    @required Result orElse(),
  });
}

abstract class $LookupEventCopyWith<$Res> {
  factory $LookupEventCopyWith(
          LookupEvent value, $Res Function(LookupEvent) then) =
      _$LookupEventCopyWithImpl<$Res>;
}

class _$LookupEventCopyWithImpl<$Res> implements $LookupEventCopyWith<$Res> {
  _$LookupEventCopyWithImpl(this._value, this._then);

  final LookupEvent _value;
  // ignore: unused_field
  final $Res Function(LookupEvent) _then;
}

abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({String query});
}

class _$SearchCopyWithImpl<$Res> extends _$LookupEventCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(Search(
      query == freezed ? _value.query : query as String,
    ));
  }
}

class _$Search implements Search {
  const _$Search(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'LookupEvent.search(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Search &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result search(String query),
    @required Result locate(),
  }) {
    assert(search != null);
    assert(locate != null);
    return search(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result search(String query),
    Result locate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result search(Search value),
    @required Result locate(Locate value),
  }) {
    assert(search != null);
    assert(locate != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result search(Search value),
    Result locate(Locate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements LookupEvent {
  const factory Search(String query) = _$Search;

  String get query;
  $SearchCopyWith<Search> get copyWith;
}

abstract class $LocateCopyWith<$Res> {
  factory $LocateCopyWith(Locate value, $Res Function(Locate) then) =
      _$LocateCopyWithImpl<$Res>;
}

class _$LocateCopyWithImpl<$Res> extends _$LookupEventCopyWithImpl<$Res>
    implements $LocateCopyWith<$Res> {
  _$LocateCopyWithImpl(Locate _value, $Res Function(Locate) _then)
      : super(_value, (v) => _then(v as Locate));

  @override
  Locate get _value => super._value as Locate;
}

class _$Locate implements Locate {
  const _$Locate();

  @override
  String toString() {
    return 'LookupEvent.locate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Locate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result search(String query),
    @required Result locate(),
  }) {
    assert(search != null);
    assert(locate != null);
    return locate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result search(String query),
    Result locate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locate != null) {
      return locate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result search(Search value),
    @required Result locate(Locate value),
  }) {
    assert(search != null);
    assert(locate != null);
    return locate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result search(Search value),
    Result locate(Locate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locate != null) {
      return locate(this);
    }
    return orElse();
  }
}

abstract class Locate implements LookupEvent {
  const factory Locate() = _$Locate;
}
