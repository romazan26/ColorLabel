//
//  ContentView.swift
//  ColorLabel
//
//  Created by Роман on 23.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var value = 0.0
    @State private var valueTwo = 0.0
    @State private var valueThree = 0.0
    
    var body: some View {
        VStack(spacing: 40) {
            Capsule()
                .frame(width: 300, height: 100)
                .foregroundColor(Color(cgColor: CGColor(red: CGFloat(value / 255),
                                                        green: CGFloat(valueTwo / 255),
                                                        blue: CGFloat(valueThree / 255),
                                                        alpha: 1)))
            SliderColorMore(value: $value, color: .red)
            SliderColorMore(value: $valueTwo, color: .green)
            SliderColorMore(value: $valueThree,  color: .blue)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderColorMore: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            
            Text("\(lround(value))")
                .frame(width: 40)
                .foregroundColor(color)
            Slider(value: $value, in: 0...255, step: 1)
                .frame(width: 220)
            TextField("\(lround(value))", value: $value, formatter: NumberFormatter())
                .frame(width: 40)
                    
        }
    }
    }




