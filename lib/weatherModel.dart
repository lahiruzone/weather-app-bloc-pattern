class WeatherModel {
  final temp;
  final presusure;
  final humidity;
  final temp_max;
  final temp_min;

  double get getTemp => temp - 272.5;
  double get getMaxTemp => temp_max - 272.5;
  double get getMinTemp => temp_min - 272.5;

  WeatherModel(this.temp, this.presusure, this.humidity, this.temp_max, this.temp_min);
}
