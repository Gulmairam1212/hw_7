import 'battery_powered.dart';
import 'device.dart';
import 'smart.lamp.dart';
import 'smart_speaker.dart';
import 'smart_thermostat.dart';
import 'adjustable.dart';

void main() {
  List<Device> device = [
    SmartLamp('Living Room Lamp', 70),
    SmartSpeaker('Kitchen Speaker'),
    SmartThermostat('Bedroom Thermostat', 22.0),
  ];

  for (var d in device) {
    d.showInfo();
    d.turnOn();
    print('------------------------');
    if (d is Adjustable) {
      (d as Adjustable).increase();
    }

    if (d is BatteryPowered) {
      (d as BatteryPowered).showBattery();
    }
  }

  print('All devices processed.');
}
