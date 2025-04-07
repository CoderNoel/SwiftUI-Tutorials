//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Noel Shaju on 28/3/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            
            VStack {
                Text("This Week")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.trailing, 120)
    
                HStack {
                    DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
                    
                    DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
                    
                    DayForecast(day: "Wed", isRainy: true, high: 50, low: 40)
                }
                
                HStack {
                    DayForecast(day: "Thu", isRainy: true, high: 40, low: 30)
                    
                    DayForecast(day: "Fri", isRainy: false, high: 85, low: 60)
                    
                    DayForecast(day: "Sat", isRainy: false, high: 50, low: 40)
                }
                
                Text("Get Sunscreen and Umbrella ready")
                    .padding(.leading, 10)
                    .padding(.top)
                    .font(.system(size: 18))
                    .fontWeight(.light)
                    .padding(.trailing, 20)
                    .foregroundStyle(.orange)
            }
            .padding()
        }
    }


#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var textColor: Color? {
        if high > 80 {
            return Color.red
        } else if high < 50 {
            return Color.teal
        } else {
            return nil
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .font(Font.largeTitle)
                .foregroundStyle(iconColor)
                .padding(5)
            Text("High: \(high)")
                .fontWeight(Font.Weight.semibold)
                .foregroundStyle(textColor ?? .primary)
            Text("Low: \(low)")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
