//
//  ContentView.swift
//  ColorLabel
//
//  Created by Роман on 23.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var value = 0.0
    @State var valueTF = ""
    @State var valueTwo = 0.0
    @State var valueThree = 0.0
    
    var body: some View {
        VStack(spacing: 40) {
            Capsule()
                .frame(width: 300, height: 100)
//                .foregroundColor(Color(uiColor:
//                                        UIColor(red: CGFloat(value),
//                                                green: CGFloat(valueTwo),
//                                                blue: CGFloat(valueThree),
//                                                alpha: 1)))
                .foregroundColor(Color(cgColor: CGColor(red: CGFloat(value / 255),
                                                        green: CGFloat(valueTwo / 255),
                                                        blue: CGFloat(valueThree / 255),
                                                        alpha: 1)))
            SliderColorMore(value: $value, textFild: $valueTF)
            SliderColorMore(value: $valueTwo, textFild: $valueTF)
            SliderColorMore(value: $valueThree, textFild: $valueTF)
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
    @Binding var textFild: String
    
    var body: some View {
        HStack {
            
            Text("\(lround(value))")
                .frame(height: 20)
            Slider(value: $value, in: 0...255, step: 1)
            TextField("255", text: $textFild)
            }
        
    }
}
