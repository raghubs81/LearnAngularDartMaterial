import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

/**
 * <pre>
 * Template Reference Variable
 * ---------------------------
 * In the below template, #box is the template reference variable
 * The variable '#box' resides in the template and refers to the the value input by the user
 *
 * </pre>
 */
@Component
(
  selector: 'learn01-loop-back',
  template:
  '''
  <div class="container">
    <h1>Template Reference Variable </h1>
    <input #box (keyup)="onKey(box.value)">
    <p>{{values}}</p>
  </div>
  '''
)
class Learn02ReferenceVariable
{
  String values = "";

  void onKey(value)
  {
     values += '$value | ';
  }
}