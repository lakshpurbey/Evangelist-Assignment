//
//  WeatherEndPoint.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation

protocol APIBuilder {
    var urlRequest: URLRequest { get }
    var baseURL: URL { get }
//    var path: String { get }
}

enum WeatherAPI {
    case getWeather
}

extension WeatherAPI: APIBuilder {

    var baseURL: URL {
        switch self {
            case .getWeather:
                return URL(string: "https://api.openweathermap.org/data/2.5/find?lat=27.7090319&lon=85.2910272&cnt=15&appid=d81752015e1301e55f1c516fd8caa920&units=metric")!
        }
    }

//    var path: String {
//        return "lat=27.7090319&lon=85.2910272&cnt=15&appid=d81752015e1301e55f1c516fd8caa920&units=metric"
//    }

    var urlRequest: URLRequest {
        return URLRequest(url: self.baseURL)
    }
}
