//
//  MessageBubble.swift
//  MessangerDemo
//
//  Created by Olegio on 31.10.2022.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing) {
            HStack {
                Text(message.text)
            }
        }
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
        MessageBubble(
            message: Message(
                id: "12345",
                text: "I've coding SwiftUI App from scratch and it's so fun!",
                recieved: false,
                timestamp: Date()
            )
        )
    }
}
