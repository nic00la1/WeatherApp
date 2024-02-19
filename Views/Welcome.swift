//
//  Welcome.swift
//  WeatherApp
//
//  Created by Nicola Kaleta on 19/02/2024.
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            VStack(spacing: 20, content: {
                Text("Welcome to the\nWeather App")
                    .font(.title.bold())
                
                Text("Please share your current location to get the weather in your area ")
            })
            .multilineTextAlignment(.center)
            .padding()
            
            
        }
    }
}

#Preview {
    ContentView()
}
