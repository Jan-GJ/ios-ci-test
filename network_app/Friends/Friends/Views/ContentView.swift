//
//  ContentView.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import SwiftUI

struct ContentView: View {
    var requestHandler: RequestHandler = RequestHandler()
    @State private var friends: [Friend] = []
    
    var body: some View {
        FriendsList(friends: friends)
            .task {
                do {
                    friends = try await requestHandler.getAllFriends()
                } catch {
                    print("Error", error)
                }
            }
        
    }
}


#Preview("Main Content") {
    ContentView()
}
