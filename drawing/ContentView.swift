//
//  ContentView.swift
//  drawing
//
//  Created by Hamza Osama on 24/12/2022.
//

import SwiftUI
import Foundation

struct customColor {
    static let blueSpecial = Color("blueSpecial")
}



struct triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockWise: Bool
    
    func path(in rect: CGRect) -> Path {
        
        let rotationAdjustments = Angle.degrees(90)
        let modifiedStartAngle = startAngle - rotationAdjustments
        let modifiedEndAngel = endAngle - rotationAdjustments
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStartAngle, endAngle: modifiedEndAngel, clockwise: !clockWise )
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        arc(startAngle: .degrees(0), endAngle: .degrees(360), clockWise: true)
            .stroke(customColor.blueSpecial, lineWidth: 7)
            .frame(width: 300, height: 300)
        
//        triangle()
//            .stroke(customColor.blueSpecial, style: StrokeStyle(lineWidth: 15, lineCap: .round, lineJoin: .round))
//            .frame(width: 250, height: 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
