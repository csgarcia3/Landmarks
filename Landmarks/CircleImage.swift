//
//  CircleImage.swift
//  Landmarks
//
//  Created by Garcia, Chelsea S on 3/3/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(.white, lineWidth: 4 ))
            .shadow(radius: 7)
    }
    
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
