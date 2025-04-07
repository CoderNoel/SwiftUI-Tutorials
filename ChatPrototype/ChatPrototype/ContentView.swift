//
//  ContentView.swift
//  ChatPrototype
//
//  Created by Noel Shaju on 28/3/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            TextBubble()
            
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct TextBubble: View {
    var body: some View {
        Text("Knock, knock!")
            .padding()
            .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
            .shadow(radius: 4)
    }
}
