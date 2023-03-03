//
//  ContentView.swift
//  Landmarks
//
//  Created by Garcia, Chelsea S on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text ("California")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
