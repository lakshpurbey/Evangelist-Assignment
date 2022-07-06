//
//  Weather.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation
import SwiftUI

struct Weather: Codable {
    let list: [WeatherInfo]
    //let cod: Int
}

// MARK: WeatherInfo
struct WeatherInfo: Codable,Identifiable {
    let id: Int
    let name: String
    let coord: Coord
    let weather: [Weatherdata]
////    let base: String
    let main: Main
////    let visibility: Int?
    let wind: Wind
    let clouds: Clouds
    let dt: Int
//    let sys: Sys
//    let timezone: Int

}

// MARK: Clouds
struct Clouds: Codable {
    let all: Int
}

// MARK: Coord
struct Coord: Codable {
    let lon: Double
    let lat: Double
}

// MARK: Main
struct Main: Codable {
    let temp: Double
    let humidity: Int
    let pressure: Int
    let tempMin: Double
    let tempMax: Double
    let feelslike: Double

    enum CodingKeys: String, CodingKey {
        case temp, humidity, pressure
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case feelslike = "feels_like"
    }
}

// MARK: Sys
struct Sys: Codable {
    let type: Int?
    let id: Int?
    let message: Double
    let country: String
    let sunrise: Int
    let sunset: Int
}

// MARK: Weather
struct Weatherdata: Codable {
    let id: Int
    let main: String
    let shortdescription: String
    let icon: String

    enum CodingKeys: String, CodingKey {
        case id, main, icon
        case shortdescription = "description"

    }
}

// MARK: Wind
struct Wind: Codable {
    let speed: Double
    let deg: Double?
}
