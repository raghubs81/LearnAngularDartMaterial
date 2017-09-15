import 'package:angular/core.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_forms/angular_forms.dart';

@Component
(
  selector: 'learn01-loop-back',
  template:
  '''
  <form #heroForm="ngForm">
     <div class="container">
       <h1>Loop back using ngModel</h1>

       <!-- Not Working: method not found: 'get(dollar)value' (t2.get(dollar)value is not a function)
       <material-input floatingLabel label="Name" #myBox></material-input><br/>
       {{myBox.value}}</p>
       -->

       <material-input floatingLabel label="Name" [(ngModel)]="myName" ></material-input><br/>
       {{myName}}<p>

      <!--
       <material-input #myBox></material-input><br/>
       {{myBox.value}}</p>
     -->

     </div>
  </form>
  ''',
  directives: const [CORE_DIRECTIVES, formDirectives, materialDirectives, MaterialInputComponent, MaterialMultilineInputComponent],
)
class Learn01LoopBack
{
   String myName = "";

   Learn01LoopBack ()
   {
      print ("In loop back logger");
   }
}