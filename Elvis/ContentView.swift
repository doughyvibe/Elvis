//
//  ContentView.swift
//  Elvis
//
//  Created by Doughy on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    var body: some View {
        
        VStack {
            
            Text("What's So Funny 'Bout")
                .font(Font.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
                .frame(width: 300)
             
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(message)
                .font(Font.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            
        }
        
        Spacer()
        
        HStack {
            Button("Peace") {
                message = "Peace"
                image = "peacesign"
            }
            Button("Love") {
                message = "Love"
                image = "heart"
            }
            Button("Understanding") {
                message = "Understanding"
                image = "lightbulb"
            }
        }
        .tint(Color.purple)
        .buttonStyle(.borderedProminent)
        
        
    }
}

#Preview {
    ContentView()
}
