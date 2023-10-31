//
//  FriendDetails.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import SwiftUI

struct FriendDetails: View {
    var friend: Friend
    
    var body: some View {
        ScrollView() {
            Text("Information")
                .font(.headline)
                .padding()
            Divider()
            VStack(alignment: .leading) {
                Text("First name: \(friend.firstname)")
                Text("Last name: \(friend.lastname)")
            }
      
            Text("Address(es)")
                .font(.headline)
                .padding()
            Divider()
            if friend.addresses != nil {
                ForEach(friend.addresses!){ address in
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("City: \(address.city)")
                        Text("Street: \(address.street)")
                        Text("Number: \(address.number)")
                        Text("Postcode: \(address.postcode)")
                    }
                }
            }
        }
    }
}

#Preview("FriendDetails") {
    FriendDetails(friend: Friend(id: 0, firstname: "Max", lastname: "Mustermann",addresses: [
    Address(id: 0, city: "Musterstadt0", postcode: "1234", street: "Musterstraße0", number: "0", friendId: 0),
    Address(id: 1, city: "Musterstadt1", postcode: "2345", street: "Musterstraße1", number: "1", friendId: 1)
    ]))
}
