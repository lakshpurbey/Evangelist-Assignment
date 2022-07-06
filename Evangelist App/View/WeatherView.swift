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
//            if let imgUrl = employee.profile_image,
//               let url = URL(string: imgUrl) {
//
//                URLImage(url: url,
//                         options: URLImageOptions(
//                            identifier: employee.id.uuidString,
//                            cachePolicy: .returnCacheElseLoad(cacheDelay: nil, downloadDelay: 0.25)
//                         ),
//                         failure: { error, _ in
//                    PlaceholderImageView()
//                },
//                         content: { image in
//                    image
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                })
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//            } else {
//                PlaceholderImageView()
//            }

//            let salary = "Salary: " + String(weather.employee_salary ?? 0)


            VStack(alignment: .leading, spacing: 4) {

                Text(weather.name)
                    .foregroundColor(.black)
                    .font(.system(size: 16, weight: .semibold))
//                Text(weather.name)
//                    .foregroundColor(.gray)
//                    .font(.footnote)
//                Text(salary)
//                    .foregroundColor(.gray)
//                    .font(.footnote)
            }
            NavigationLink(destination: WeatherDetailsView(weather: weather)) {

            }
        }

    }
}

//struct PlaceholderImageView: View {
//    var body: some View {
//        Image(systemName: "photo.fill")
//            .foregroundColor(.white)
//            .background(Color.gray)
//            .frame(width: 100, height: 100)
//    }
//}
