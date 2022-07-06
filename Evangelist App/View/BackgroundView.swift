//
//  BackgroundView.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 06/07/2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        let colorScheme = [Color.black,
                           Color(red: 10/255, green: 31/255, blue: 78/255),
                           Color(red: 10/255, green: 87/255, blue: 151/255)]

        let gradient = Gradient(colors: colorScheme)
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top)

        let background = Rectangle()
            .fill(linearGradient)
            .blur(radius: 200, opaque: true)
            .edgesIgnoringSafeArea(.all)

        return background
    }
}
