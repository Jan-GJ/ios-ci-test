//
//  RequestHandler.swift
//  Friends
//
//  Created by Jan Große Jüttermann on 23.10.23.
//

import Foundation

struct RequestHandler{

    func getAllFriends() async throws -> [Friend]{
        guard let url = URL(string: "http://localhost:3000/friends?filter=%7B%0A%20%20%22include%22%3A%20%5B%0A%20%20%20%20%7B%0A%20%20%20%20%20%20%22relation%22%3A%20%22addresses%22%0A%20%20%20%20%7D%0A%20%20%5D%0A%7D") else { fatalError("Missing URL") }
            let urlRequest = URLRequest(url: url)
            let (data, response) = try await URLSession.shared.data(for: urlRequest)

            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Error while fetching data") }
        let decodedFriends = try JSONDecoder().decode([Friend].self, from: data)
        return decodedFriends;
    }
    
}
