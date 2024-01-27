import XCTest
import MyLibrary
@testable import MyLibrary

final class IntergrationTest: XCTestCase
{

func isTemperatureValue() async throws{
    //given
    let weatherserv = WeatherServiceImpl()
    //when
    let temperature = try await weatherserv.getTemperature()
    //then
    XCTAssertEqual(temperature,55)
}
func isTemperatureInt() async throws{
    //given
    let weatherserv = WeatherServiceImpl()
    //when
    let temperature = try await weatherserv.getTemperature()
    //then
    XCTAssert((temperature as Any) is Int)
}
}
final class MyLibraryTests: XCTestCase {
    

    func isTemperature() throws {
        //given
        let filePath = try XCTUnwrap(Bundle.module.path(forResource:"data",ofType:"json"))
        let jsonString = try String(contentsOfFile: filePath)
        let jsonData = Data(jsonString.utf8)
        let jsonDecoder = JSONDecoder()

        // When
        let weather = try jsonDecoder.decode(Weather.self, from: jsonData)
        print(weather.main.temp)

        //Then
        XCTAssertNotNil(weather.main.temp)
    }

        func isFilePath() throws {
        //given
        let filePath = try XCTUnwrap(Bundle.module.path(forResource:"data",ofType:"json"))
        let jsonString = try String(contentsOfFile: filePath)
        let jsonData = Data(jsonString.utf8)
        let jsonDecoder = JSONDecoder()

        // When
        let weather = try jsonDecoder.decode(Weather.self, from: jsonData)
        print(weather.main.temp)

        //Then
        XCTAssertNotNil(filePath)
    }

}