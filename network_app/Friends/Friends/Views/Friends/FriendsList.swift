//
//  FriendsList.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import SwiftUI

struct FriendsList: View {
    var friends: [Friend]
    
    var body: some View {
        NavigationSplitView{
            List{
                ForEach(friends){ friend in
                    NavigationLink{
                        FriendDetails(friend: friend)
                    } label: {
                        FriendRow(friend: friend)
                    }
                }
            }
                .navigationTitle("Friends")
        } detail: {
            Text("Select a friend")
        }

    }
}
