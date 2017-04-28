import 'package:angular2/core.dart';
import 'dart:async';

@Component(
  selector: 'my-clock',
  template: '''
    <div>
      The current time is {{ currentTime }}
    </div>
  '''
)
class MyClockComponent {
  String currentTime;

  MyClockComponent() {
    new Timer.periodic(new Duration(seconds: 1), (e) {
      currentTime = new DateTime.now().toString();
    });
  }
}