//
//  ContentView.swift
//  drawing
//
//  Created by Hamza Osama on 24/12/2022.
//

import SwiftUI

struct customColor {
    static let blueSpecial = Color("blueSpecial")
}

struct ContentView: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("example"), sourceRect: CGRect(x: 0, y: 0.25, width: 0.4, height: 1),scale: 0.2), lineWidth: 60)
            .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
