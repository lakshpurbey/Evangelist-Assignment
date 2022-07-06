//
//  WeatherView.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 06/07/2022.
//


import SwiftUI

struct WeatherView: View {

    var weather: WeatherInfo

    var body: some View {
        HStack{

            VStack(alignment: .leading, spacing: 4) {

                Text(weather.name)
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .semibold))

            }
            NavigationLink(destination: WeatherDetailsView(weather: weather)) {

            }
        }

    }
}
