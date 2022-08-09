//: [Previous](@previous)

import Foundation


struct GithubProfile: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followers: Int
    let following: Int
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url" // camelCase와 snake_case를 Matching 시켜주는 것
        case htmlUrl = "html_url"
        case followers
        case following
    }
}

let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)
let url = URL(string: "https://api.github.com/users/cafielo")!

let task = session.dataTask(with: url) { data, response, error in
    guard let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) else {
        print("--> Response \(response)")
        return
    }
    
    guard let data = data else { return }
    // data -> GithubProfile
    
    do {
        let decoder = JSONDecoder()
        let profile = try decoder.decode(GithubProfile.self, from: data)
        print("Profile : \(profile)")
    } catch let error as NSError {
        print("error : \(error)")
    }
    
//    let result = String(data: data, encoding: .utf8)
//    print(result)
}

task.resume()





//: [Next](@next)
