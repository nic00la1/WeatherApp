//
//  WeatherView.swift
//  WeatherApp
//
//  Created by Nicola Kaleta on 19/02/2024.
//

import SwiftUI

struct WeatherView: View {
    // var weather: ResponseBody
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Stockholm,\nSweden")
                .font(.system(size: 36, weight: .semibold))
            
            Text("Tue, Jan 30")
                .font(.system(size: 20))
                .opacity(0.5)
            
            HStack {
                Image("rain")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                
                VStack {
                    Text("19")
                        .font(.system(size: 66, weight: .semibold))
                    
                    Text("Rainy")
                        .font(.system(size: 26))
                }
                .padding(.leading)
                
                Spacer()
            }
            .padding()
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("light"), Color("dark")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    WeatherView()
}

// Create the Extension to transform Double into Decimal
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}
