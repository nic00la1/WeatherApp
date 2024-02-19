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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Welcome()
}
