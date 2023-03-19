//
//  WeatherWidget.swift
//  Weather App
//
//  Created by YAQRUT on 2023-03-02.
//

import SwiftUI

struct WeatherWidget: View {
    var forecasts: Forecast
    
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //MARK: Trapezoid
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            
            //MARK: Content
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 8) {
                    //MARK: Forecast Temperature
                    Text("\(forecasts.temperature)°")
                        .font(.system(size: 64))
                    
                    VStack(alignment: .leading, spacing: 2) {
                        //MARK: Forecast Temperature Range
                        Text("H:\(forecasts.high)° L:\(forecasts.low)°")
                            .font(.title2)
                            .foregroundColor(.secondary)
                        
                        //MARK: Forecast Location
                        Text(forecasts.location)
                            .font(.title3)
                            .font(.body)
                            .lineLimit(1)
                    }
                }
                VStack(alignment: .trailing, spacing: 0) {
                    //MARK: Forecast Large Icon
                    Image("\(forecasts.icon) large")
                        .padding(.trailing, 4)
                    
                    //MARK: Weather
                    Text(forecasts.weather.rawValue)
                        .font(.title3)
                        .padding(.trailing, 30)
                }
            }
            .foregroundColor(.white)
            .padding(.bottom, 20)
            .padding(.leading, 20)
        }
        .frame(width: 342, height: 184, alignment: .bottom)
    }
}

struct WeatherWidget_Previews: PreviewProvider {
    static var previews: some View {
        WeatherWidget(forecasts: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}
