//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var birthday = ""
    @State private var textBox = "When is Your Birthday?"
    var body: some View {
        VStack {
            Text (textTitle)
                .font(.title)
                .fontWeight(.bold)
            TextField("Type Your Name Here...", text: $name)
                .padding(.bottom)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
                name = ""
            
        // Name Box
                
            TextField("Type Your Birthday Here...", text: $birthday)
                .padding(.bottom)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textBox = "Welcome, \(name)!"
                birthday = ""
            }
            .padding(.top)
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
