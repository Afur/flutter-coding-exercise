import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:spa_coding_exercise/values/app_errors.dart';

abstract class LocationService {
  Future<Either<AppError, Position>> getPosition();
}

@RegisterAs(LocationService)
@lazySingleton
class LocationServiceImpl extends LocationService {
  @override
  Future<Either<AppError, Position>> getPosition() async {
    try {
      return await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high).then((position) {
        return position != null
            ? right(position)
            : left(const LocationFailure.locatingError());
      });
    } on PermissionDeniedException catch (_) {
      return left(const LocationFailure.noPermissions());
    }
  }
}
