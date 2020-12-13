import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_errors.freezed.dart';

abstract class AppError {}

class UnknownError extends AppError {}

@freezed
abstract class LocationFailure extends AppError with _$LocationFailure {
  const factory LocationFailure.noPermissions() = NoPermissions;
  const factory LocationFailure.locatingError() = LocatingError;
}

extension ErrorExtensions on AppError {
  String getString(BuildContext context) {
    if (this is LocationFailure) {
      return (this as LocationFailure).when(
        noPermissions: () => "You have to grant location permissions first",
        locatingError: () => "An error occurred while locating the possition",
      );
    } else {
      return "Something went wrong";
    }
  }
}
