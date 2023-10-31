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
