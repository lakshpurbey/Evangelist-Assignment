//
//  HomeView.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 06/07/2022.
//

import SwiftUI

struct HomeView: View {

@StateObject var viewModel = WeatherViewModelImpl(service: WeatherServiceImpl())
@State private var willMoveToNextScreen = false

var body: some View {
    Group {
        switch viewModel.state {
            case .loading:
                ProgressView()
            case .failed(let error):
                ErrorView(error: error, handler: viewModel.getWeathers)
            case .success(let weathers):
                NavigationView {
                    List {
                        ForEach(weathers) { item in
                            WeatherView(weather: item)
                        }
                    }

                    .navigationTitle(Text("Weather Lists"))
                }

        }
    }.onAppear(perform: viewModel.getWeathers)
}

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
