//
//  WeatherViewModel.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation
import Combine

protocol WeatherViewModel {
    func getWeathers()
}

class WeatherViewModelImpl: ObservableObject, WeatherViewModel {

    private let service: WeatherService

    private(set) var weather = [WeatherInfo]()
    private var cancellables = Set<AnyCancellable>()

    @Published private(set) var state: ResultState = .loading

    init(service: WeatherService) {
        self.service = service
    }

    func getWeathers() {
        self.state = .loading

        let cancellable = service
            .request(from: .getWeather)
            .sink { res in
                switch res {
                    case .finished:
                        // send back the articles
                        self.state = .success(content: self.weather)
                    case .failure(let error):
                        // send back the error
                        self.state = .failed(error: error)
                }
            } receiveValue: { response in
                self.weather = response.list
            }

        self.cancellables.insert(cancellable)

    }
}

