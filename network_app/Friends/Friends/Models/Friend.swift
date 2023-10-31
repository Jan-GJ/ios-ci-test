//
//  Friend.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import Foundation

struct Friend: Hashable, Codable, Identifiable{
    var id: Int? = nil
    var firstname: String
    var lastname: String
    var addresses: [Address]?
}
