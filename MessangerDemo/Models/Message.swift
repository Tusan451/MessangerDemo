//
//  Message.swift
//  MessangerDemo
//
//  Created by Olegio on 31.10.2022.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var recieved: Bool
    var timestamp: Date
}
