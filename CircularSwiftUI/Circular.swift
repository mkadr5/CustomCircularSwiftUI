//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Muhammet Kadir on 25.03.2023.
//

import SwiftUI

struct Circular: View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader{geometry in
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(foregroundColor)
                
                    
            }.animation(.easeIn, value: percentage)
            .padding(lineWidth/1.5)
        }
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10,backgroundColor: .red,foregroundColor: .green,percentage: 50)
    }
}
