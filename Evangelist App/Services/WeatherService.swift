//
//  WeatherService.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation
import Combine

protocol WeatherService {
    func request(from endpoint: WeatherAPI) -> AnyPublisher<Weather, APIError>
}

struct WeatherServiceImpl: WeatherService {

    func request(from endpoint: WeatherAPI) -> AnyPublisher<Weather, APIError> {
        return URLSession
            .shared
            .dataTaskPublisher(for: endpoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError { _ in APIError.unknown}
            .flatMap { data, response -> AnyPublisher<Weather, APIError> in

                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: APIError.unknown).eraseToAnyPublisher()
                }

                print("apiresponse",response)

                if (200...299).contains(response.statusCode) {
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.dateDecodingStrategy = .iso8601

                    return Just(data)
                        .decode(type: Weather.self , decoder: jsonDecoder)
                        .mapError { _ in APIError.decodingError }
                        .eraseToAnyPublisher()
                } else {
                    return Fail(error: APIError.errorCode(response.statusCode)).eraseToAnyPublisher()
                }

            }
            .eraseToAnyPublisher()
    }

}

