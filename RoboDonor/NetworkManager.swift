//
//  NewsNetworkManager.swift
//  RoboGiver
//
//  Created by Adam Braus on 4/19/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

import Foundation

// newsapi key 012dd97ac4c94c039b86832510f13b7f
// https://newsapi.org/docs/get-started

class NetworkManager {
//    static func getArticles(completion:((_ json: Data?) -> Void)) {
//        completion(Data(articles.utf8))
//    }
    
//    static func fetchArticles(completion: @escaping (_ response: ArticleArray?) -> Void) {
//        // Create a GET url request
//        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=012dd97ac4c94c039b86832510f13b7f")!
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        URLSession.shared.dataTask(with: request) { (data, response, error) in
//            if let err = error {
//                print("Error fetching from newsAPI: ", err.localizedDescription)
//            }
//            do {
//                DispatchQueue.main.async {
//                    let articles = try! JSONDecoder().decode(ArticleArray.self, from: data!)
//                    completion(articles)
//                }
//            }
//        }.resume()
//    }
}


