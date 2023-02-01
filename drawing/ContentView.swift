//
//  ContentView.swift
//  drawing
//
//  Created by Hamza Osama on 24/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var amount = 0.0
    
    
    var body: some View {
        VStack {
            Image("example")
                .resizable()
                .frame(width: 200, height: 200)
                .saturation(amount)
                .blur(radius: (1 - amount * 20))
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
