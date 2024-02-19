//
//  Home.swift
//  WeatherApp
//
//  Created by Nicola Kaleta on 19/02/2024.
//

import SwiftUI

struct Home: View {
    @StateObject var locationManager =  LocationManager()
    
    var body: some View {
        VStack {
            Welcome()
                .environmentObject(locationManager)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("light"), Color("dark")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    ContentView()
}
