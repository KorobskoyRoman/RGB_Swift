//
//  ContentView.swift
//  RGBApp
//
//  Created by Roman Korobskoy on 26.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var redComponent: Double = 0.5
    @State var greenComponent: Double = 0.5
    @State var blueComponent: Double = 0.5
    
    var body: some View {
        VStack {
            Slider(value: $redComponent)
                .padding(.horizontal)
            Slider(value: $greenComponent)
                .padding(.horizontal)
            Slider(value: $blueComponent)
                .padding(.horizontal)
            Color(red: redComponent, green: greenComponent, blue: blueComponent)
            Text("Current value of: \nRed is \(redComponent), \nGreen is \(greenComponent),\nBlue is \(blueComponent)")
                .font(.footnote)
                .fontWeight(.semibold)
                
        }
        .padding(.all, 10.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}


