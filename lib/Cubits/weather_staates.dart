abstract class WeatherStates {}

class WeatherLoading extends WeatherStates {}
class WeatherFailer extends WeatherStates {}
class WeatherSuccess extends WeatherStates {}
class WeatherInitial extends WeatherStates {}