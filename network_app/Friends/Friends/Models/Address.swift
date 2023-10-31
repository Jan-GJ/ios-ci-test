//
//  Address.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import Foundation


struct Address: Hashable, Codable, Identifiable{
    var id: Int
    var city: String    
    var postcode: String
    var street: String
    var number: String
    var friendId: Int
}
