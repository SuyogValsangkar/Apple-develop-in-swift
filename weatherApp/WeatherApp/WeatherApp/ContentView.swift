//
//  ContentView.swift
//  WeatherApp
//
//  Created by suva on 7/29/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 10) {
                Text("Weekly Summary")
                    .font(Font.largeTitle)
                    .fontWeight(.bold)
                    .padding(20)
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(10)
            }
            
            HStack(spacing: 10) {
                Text("Dates:\nSun (7/27) - Sat (8/2)")
                    .font(Font.headline)
                    .padding(10)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                Text("Avg High: 67º F\nAvg Low:  56º F")
                    .font(Font.headline)
                    .padding(10)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
            }
        }
        .padding()
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                DayForecast(day: "Sun",
                            high: 70,
                            low: 60,
                            weatherType: 2)
                
                DayForecast(day: "Mon",
                            high: 70,
                            low: 50,
                            weatherType: 0)
                
                DayForecast(day: "Tue",
                            high: 60,
                            low: 45,
                            weatherType: 2)
                
                DayForecast(day: "Wed",
                            high: 40,
                            low: 25,
                            weatherType: 1)
                
                DayForecast(day: "Thu",
                            high: 90,
                            low: 80,
                            weatherType: 0)
                
                DayForecast(day: "Fri",
                            high: 60,
                            low: 55,
                            weatherType: 2)
                
                DayForecast(day: "Sat",
                            high: 80,
                            low: 75,
                            weatherType: 0)
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let weatherType: Int
    
    var iconName: String {
        if weatherType == 0 {
            return "sun.max.fill"
        }
        else if weatherType == 1 {
            return "cloud.snow.fill"
        }
        else if weatherType == 2{
            return "cloud.rain.fill"
        }
        else {
            return "camera.metering.unknown"
        }
    }
    
    var iconColor: Color {
        let avgTemp: Int = (high + low) / 2
        
        if weatherType == 0 {
            if avgTemp >= 80 {
                return Color.orange
            }
            else {
                return Color.yellow
            }
        }
        else if weatherType == 1 {
            return Color.white
        }
        else {
            return Color.blue
        }
    }
    
    var body: some View {
        VStack(spacing: 5) {
            Text(day)
                .font(Font.title.bold())
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding()
            Text("High: \(high)º F")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º F")
                .fontWeight(Font.Weight.semibold)
        }
        .padding(15)
        .background(Color.gray.opacity(0.4))
        .cornerRadius(10)
    }
}
