class SpaceAge {
  double age({required String planet, required int seconds}) {
    double period = 0;
    if (planet == 'Earth') {
      period = 31557600;
    } else if (planet == 'Mercury') {
      period = 0.2408467 * 31557600;
    } else if (planet == 'Venus') {
      period = 0.61519726 * 31557600;
    } else if (planet == 'Mars') {
      period = 1.8808158 * 31557600;
    } else if (planet == 'Jupiter') {
      period = 11.862615 * 31557600;
    } else if (planet == 'Saturn') {
      period = 29.447498 * 31557600;
    } else if (planet == 'Uranus') {
      period = 84.016846 * 31557600;
    } else if (planet == 'Neptune') {
      period = 164.79132 * 31557600;
    }
    return (seconds / period * 100).round() / 100;
  }
}
