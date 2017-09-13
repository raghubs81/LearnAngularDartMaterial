import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:learn_md/feature/learn01_loop_back.dart';
import 'package:learn_md/feature/learn02_reference_variable.dart';

@Component(
   selector: 'my-app',
   directives: const [
      CORE_DIRECTIVES,
      ROUTER_DIRECTIVES,
      materialDirectives,
      MaterialIconComponent,
      MaterialPersistentDrawerDirective,
      MaterialTemporaryDrawerComponent
   ],
   templateUrl: 'app_component.html',
   styleUrls: const [
      'app_component.css',
      'package:angular_components/src/components/app_layout/layout.scss.css',
   ],
   providers: const [
      ROUTER_PROVIDERS,
      popupBindings,
   ],
)
@RouteConfig
(const[
   const Route (name: 'Learn01LoopBack'         , path: '/Learn01LoopBack'         , component: Learn01LoopBack),
   const Route (name: 'Learn02ReferenceVariable', path: '/Learn02ReferenceVariable', component: Learn02ReferenceVariable),
])
class AppComponent
{
   String title = "Learn Basic Features";

   bool end = false;

   bool overlay = false;
}