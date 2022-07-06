//
//  WeatherDetailsView.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 06/07/2022.
//

import SwiftUI

struct WeatherDetailsView: View {

    var weather: WeatherInfo

    var body: some View {

        ZStack {
            BackgroundView()

            VStack {

                let temp = String(weather.main.temp)
                let maxtemp = String(weather.main.tempMax)
                let mintemp = String(weather.main.tempMin)
                let sDesc = String(weather.weather[0].shortdescription)

//                let feellike = String(weather.main.feelslike)
//                let windspeed = String(weather.wind.speed)
//                let humadity = String(weather.main.humidity)

                Text(temp)
                    .font(.system(size: 140))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)


                VStack(alignment: .leading) {

                    HStack {

                    Text("Max Temp :")
                            .foregroundColor(.white)

                    Text(maxtemp)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    }

                    HStack {

                        Text("Min Temp :")
                            .foregroundColor(.white)

                    Text(mintemp)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    }

                    HStack {
                        Text("Description :")
                            .foregroundColor(.white)

                    Text(sDesc)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    }


//                    HStack {
//                        Text("FEELS LIKE :")
//                            .foregroundColor(.white)
//                        Text(feellike)
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
//
//
//                    }.padding(.bottom, 1)
//
//                    HStack {
//                        Text("WIND SPEED :")
//                            .foregroundColor(.white)
//
//                        Text(windspeed)
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
//
//                    }.padding(.bottom, 1)
//
//                    HStack {
//                        Text("HUMIDITY :")
//                            .foregroundColor(.white)
//                        Text(humadity)
//                            .foregroundColor(.white)
//                            .fontWeight(.bold)
//
//
//                    }.padding(.bottom, 1)

                }.font(.caption)
            }.padding(0)

        }.navigationTitle(weather.name)
            .foregroundColor(.white)
            .font(.headline)
            .tint(.white)
    }
}
