//
//  ForecastModel.swift
//  Weather App
//
//  Created by YAQRUT on 2023-03-01.
//

import Foundation

enum ForecastPeriod {
    case hourly
    case daily
}

enum Weather: String {
    case clear = "Clear"
    case cloudy = "Cloudy"
    case rainy = "Mid Rain"
    case stormy = "Showers"
    case sunny = "Sunny"
    case tornado = "Tornado"
    case windy = "Fast Wind"
}

struct Forecast: Identifiable {
    var id = UUID()
    var date: Date
    var weather: Weather
    var probability: Int
    var temperature: Int
    var high: Int
    var low: Int
    var location: String
    
    var icon: String {
        switch weather {
        case .clear:
            return "Moon cloud fast wind"
        case .cloudy:
            return "Cloudy"
        case .rainy:
            return "Moon cloud mid rain"
        case .stormy:
            return "Sun cloud angled rain"
        case .sunny:
            return "Sun cloud mid rain"
        case .tornado:
            return "Tornado"
        case .windy:
            return "Moon cloud fast wind"
        }
    }
}

extension Forecast {
    static let hour: TimeInterval = 60 * 60
    static let day: TimeInterval = 60 * 60 * 24
    
    static let hourly: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: hour * -1), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .now, weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 1), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 2), weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 3), weather: .windy, probability: 0, temperature: 17, high: 20, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: hour * 4), weather: .windy, probability: 0, temperature: 17, high: 20, low: 18, location: "Calgary, Canada"),
    ]
    
    static let daily: [Forecast] = [
        Forecast(date: .init(timeIntervalSinceNow: 0), weather: .rainy, probability: 30, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: day * 1), weather: .stormy, probability: 10, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: day * 2), weather: .windy, probability: 0, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: day * 3), weather: .clear, probability: 5, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: day * 4), weather: .windy, probability: 16, temperature: 17, high: 20, low: 18, location: "Calgary, Canada"),
        Forecast(date: .init(timeIntervalSinceNow: day * 5), weather: .windy, probability: 0, temperature: 17, high: 20, low: 18, location: "Calgary, Canada"),
    ]
    
    static let cities: [Forecast] = [
        Forecast(date: .now, weather: .stormy, probability: 0, temperature: 19, high: 24, low: 18, location: "Calgary, Canada"),
        Forecast(date: .now, weather: .windy, probability: 0, temperature: 20, high: 22, low: 19, location: "Toronto, Canada"),
        Forecast(date: .now, weather: .sunny, probability: 17, temperature: 25, high: 28, low: 22, location: "Wienna, Austria"),
        Forecast(date: .now, weather: .tornado, probability: 0, temperature: 13, high: 16, low: 10, location: "Tennessee, United States"),
    ]
}
