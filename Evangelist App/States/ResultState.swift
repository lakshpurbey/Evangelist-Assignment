//
//  ResultState.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [WeatherInfo])
    case failed(error: Error)
}
