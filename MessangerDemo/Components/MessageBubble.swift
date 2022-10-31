//
//  MessageBubble.swift
//  MessangerDemo
//
//  Created by Olegio on 31.10.2022.
//

import SwiftUI

struct MessageBubble: View {
    var message: Message
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment: message.recieved ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.recieved ? Color("Gray") : Color("Violet"))
                    .foregroundColor(message.recieved ? .black : .white)
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.recieved ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(.gray)
                    .padding(message.recieved ? .leading : .trailing, 20)
            }
            
        }
        .frame(maxWidth: .infinity, alignment: message.recieved ? .leading : .trailing)
        .padding(message.recieved ? .leading : .trailing)
        .padding(.horizontal, 10)
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
