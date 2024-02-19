//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Nicola Kaleta on 19/02/2024.
//

import Foundation
import CoreLocation

class WeatherManager {
    
    // Open Weather API : 9bdbc17b9f2e89e8f67814360356095d

    
    func getCurrentWeather(latitude: CLLocationDegrees, longitude: CLLocationDegrees) async throws {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=9bdbc17b9f2e89e8f67814360356095d&units=metric") else { fatalError("Something Went wrong...") }
        
        let urlRequest = URLRequest(url: url)
        
        let (data, res) = try await URLSession.shared.data(for: urlRequest)
        
        guard (res as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error fetching weather data!") }
    }
}

