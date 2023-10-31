//
//  FriendRow.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import SwiftUI

struct FriendRow: View {
    var friend: Friend
    
    var body: some View {
        HStack(alignment: .center){
            Text("\(friend.firstname) \(friend.lastname)")
            Spacer()
        }
    }
}

#Preview("FriendRow") {
    let friend = Friend(id: 0, firstname: "Max", lastname: "Mustermann")
    return FriendRow(friend: friend)
        .padding()
}
