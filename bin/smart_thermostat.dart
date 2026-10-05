import 'device.dart';

class SmartThermostat extends Device {
  double temperature = 22;
   SmartThermostat(String name, this.temperature): super(name);

   @override
   void turnOn(){
    print('Thermostat $name is On');
   }
    @override
    void turnOff(){
      print('Thermostat $name is OFF');
    }
    @override
    void showInfo(){
      print('Device: $name, Temperature: $temperature');
    }
}