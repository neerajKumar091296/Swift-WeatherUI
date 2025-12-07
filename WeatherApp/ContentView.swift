//
//  ContentView.swift
//  WeatherApp
//
//  Created by NeerajKumar09 on 07/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(colors: [.blue,Color("lightskyblue")], startPoint: .topLeading, endPoint: UnitPoint.bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Cupertion, CA")
                    .font(.system(size: 40, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack (spacing: 10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("29°C")
                        .font(.system(size: 70, weight: .heavy, design: .rounded))
                        .foregroundStyle(Color.white)
                    
                }
                .padding(.bottom, 50)
                
                HStack(spacing: 19){
                    
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.sun.fill", temperature: 26)
                    WeatherDayView(dayOfWeek: "Wed", imageName: "sun.max.fill", temperature: 26)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.rain.fill", temperature: 26)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.bolt.rain.fill", temperature: 26)
                    WeatherDayView(dayOfWeek: "Tue", imageName: "cloud.moon.fill", temperature: 26)
                    
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Text ("Change Mode")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .clipShape(.capsule)
                }
                
                Spacer()
                
            
            }
        }
    }
}
#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:40, height:40)
            
            Text("\(temperature)°C")
                .font(.system(size: 20, weight: .heavy, design: .rounded))
                .foregroundStyle(Color.white)
            
            
        }
    }
}


