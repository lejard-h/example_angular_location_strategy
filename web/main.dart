import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:example_angular_location_strategy/app_component.template.dart'
    as ng;
import 'main.template.dart' as ng;

// default is false
const isProd = bool.fromEnvironment('prod');

@GenerateInjector([routerHashModule])
final devInjector = ng.devInjector$Injector;

@GenerateInjector([routerModule])
final prodInjector = ng.prodInjector$Injector;

void main() {
  runApp(
    ng.AppComponentNgFactory,
    createInjector: isProd ? prodInjector : devInjector,
  );
}
