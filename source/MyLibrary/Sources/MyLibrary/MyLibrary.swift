public class MyLibrary {
    private let weatherService: WeatherService
    public init(weatherService: WeatherService? = nil) {
        self.weatherService = weatherService ?? WeatherServiceImpl()
    }
}

private extension Int {
    func contains(_ character: Character) -> Bool {
        return String(self).contains(character)
    }
}
