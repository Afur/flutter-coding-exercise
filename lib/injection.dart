import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:spa_coding_exercise/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection() =>
    $initGetIt(getIt);