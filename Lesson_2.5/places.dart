class Place {
  double latitude;
  double longitude;

  Place(double this.latitude, double this.longitude);

  String getDetails() {
    return "The coordinates of this place are ${latitude} and ${longitude}";
  }
}

class City extends Place with Weather, Administration {
  String name;

  City(String this.name, double latitude, double longitude):
      super(latitude, longitude);

  @override
  String getDetails() {
    return "The name of this city is $name";
  }
}

class Weather {
  double temperature;
  double humidity;

  String getWeatherDetails() {
    return "The current temperature is $temperature. The humidity is $humidity";
  }
}

class Administration {
  String mayor;
}

class RainyWeather implements Weather {

  @override
  double humidity;

  @override
  double temperature;

  @override
  String getWeatherDetails() {
    // TODO: implement getWeatherDetails
  }
}

void main() {
  Place place = new Place(35.9057, 14.4665);
  print(place.getDetails());

  City city = new City("Bristol", 51.456, -2.635);
  city.temperature = 10.0;
  city.humidity = 5.0;
  print(city.getDetails());
  print(city.getWeatherDetails());
}