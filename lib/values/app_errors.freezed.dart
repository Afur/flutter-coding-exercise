// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_errors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LocationFailureTearOff {
  const _$LocationFailureTearOff();

// ignore: unused_element
  NoPermissions noPermissions() {
    return const NoPermissions();
  }

// ignore: unused_element
  LocatingError locatingError() {
    return const LocatingError();
  }
}

// ignore: unused_element
const $LocationFailure = _$LocationFailureTearOff();

mixin _$LocationFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noPermissions(),
    @required Result locatingError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noPermissions(),
    Result locatingError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noPermissions(NoPermissions value),
    @required Result locatingError(LocatingError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noPermissions(NoPermissions value),
    Result locatingError(LocatingError value),
    @required Result orElse(),
  });
}

abstract class $LocationFailureCopyWith<$Res> {
  factory $LocationFailureCopyWith(
          LocationFailure value, $Res Function(LocationFailure) then) =
      _$LocationFailureCopyWithImpl<$Res>;
}

class _$LocationFailureCopyWithImpl<$Res>
    implements $LocationFailureCopyWith<$Res> {
  _$LocationFailureCopyWithImpl(this._value, this._then);

  final LocationFailure _value;
  // ignore: unused_field
  final $Res Function(LocationFailure) _then;
}

abstract class $NoPermissionsCopyWith<$Res> {
  factory $NoPermissionsCopyWith(
          NoPermissions value, $Res Function(NoPermissions) then) =
      _$NoPermissionsCopyWithImpl<$Res>;
}

class _$NoPermissionsCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements $NoPermissionsCopyWith<$Res> {
  _$NoPermissionsCopyWithImpl(
      NoPermissions _value, $Res Function(NoPermissions) _then)
      : super(_value, (v) => _then(v as NoPermissions));

  @override
  NoPermissions get _value => super._value as NoPermissions;
}

class _$NoPermissions implements NoPermissions {
  const _$NoPermissions();

  @override
  String toString() {
    return 'LocationFailure.noPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noPermissions(),
    @required Result locatingError(),
  }) {
    assert(noPermissions != null);
    assert(locatingError != null);
    return noPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noPermissions(),
    Result locatingError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noPermissions != null) {
      return noPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noPermissions(NoPermissions value),
    @required Result locatingError(LocatingError value),
  }) {
    assert(noPermissions != null);
    assert(locatingError != null);
    return noPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noPermissions(NoPermissions value),
    Result locatingError(LocatingError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noPermissions != null) {
      return noPermissions(this);
    }
    return orElse();
  }
}

abstract class NoPermissions implements LocationFailure {
  const factory NoPermissions() = _$NoPermissions;
}

abstract class $LocatingErrorCopyWith<$Res> {
  factory $LocatingErrorCopyWith(
          LocatingError value, $Res Function(LocatingError) then) =
      _$LocatingErrorCopyWithImpl<$Res>;
}

class _$LocatingErrorCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements $LocatingErrorCopyWith<$Res> {
  _$LocatingErrorCopyWithImpl(
      LocatingError _value, $Res Function(LocatingError) _then)
      : super(_value, (v) => _then(v as LocatingError));

  @override
  LocatingError get _value => super._value as LocatingError;
}

class _$LocatingError implements LocatingError {
  const _$LocatingError();

  @override
  String toString() {
    return 'LocationFailure.locatingError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LocatingError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noPermissions(),
    @required Result locatingError(),
  }) {
    assert(noPermissions != null);
    assert(locatingError != null);
    return locatingError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noPermissions(),
    Result locatingError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locatingError != null) {
      return locatingError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noPermissions(NoPermissions value),
    @required Result locatingError(LocatingError value),
  }) {
    assert(noPermissions != null);
    assert(locatingError != null);
    return locatingError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noPermissions(NoPermissions value),
    Result locatingError(LocatingError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locatingError != null) {
      return locatingError(this);
    }
    return orElse();
  }
}

abstract class LocatingError implements LocationFailure {
  const factory LocatingError() = _$LocatingError;
}
