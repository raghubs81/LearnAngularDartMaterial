import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component
(
  selector: 'learn01-loop-back',
  template:
  '''
  <div class="container">
    <h1>Loop back without going to the component</h1>
    <input #box (keyup)="0">
    <p>{{box.value}}</p>
  </div>
  '''
)
class Learn01LoopBack
{
   Learn01LoopBack ()
   {
      print ("In loop back logger");
   }
}