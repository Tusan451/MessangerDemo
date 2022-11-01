//
//  ContentView.swift
//  MessangerDemo
//
//  Created by Olegio on 31.10.2022.
//

import SwiftUI

struct ContentView: View {
    var messageArray = [
        "Hello! How are you today?",
        "How to fix this bag?",
        "I'm coding a SwiftUI App and it's so much fun!"
    ]
    
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView {
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(
                        id: "12345",
                        text: text,
                        recieved: true,
                        timestamp: Date()
                    ))
                }
            }
            .padding(.top, 10)
            .background(.white)
            .cornerRadius(30, corners: [.topLeft, .topRight])
        }
        .background(Color("Violet"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
