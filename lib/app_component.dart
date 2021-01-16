import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'app_component.template.dart' as ng;

@Component(
  selector: 'my-app',
  template: '''
  <a routerLink="/one">Page 1</a>
  <a routerLink="/two">Page 2</a>
  <router-outlet [routes]="routes"></router-outlet>
  ''',
  directives: [routerDirectives],
)
class AppComponent {
  final routes = <RouteDefinition>[
    RouteDefinition(path: 'one', component: ng.Page1NgFactory),
    RouteDefinition(path: 'two', component: ng.Page2NgFactory),
  ];
}

@Component(
  selector: 'page-one',
  template: '''
  Page One active
  ''',
)
class Page1 {}

@Component(
  selector: 'page-two',
  template: '''
  Page Two active
  ''',
)
class Page2 {}
