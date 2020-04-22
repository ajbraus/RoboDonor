//
//  Article.swift
//  RoboDonor
//
//  Created by Adam Braus on 4/19/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

//{
//  "articles": [ {
//    "source": {
//        "id": "cnn",
//        "name": "CNN"
//    },
//    "author": "Kristina Sgueglia, Paula Newton, Josh Campbell and Susannah Cullinane, CNN",
//    "title": "Gunman kills at least 9 in rampage across Nova Scotia - CNN",
//    "description": "A gunman may have shot up to 10 people, including at least one Mountie, in a rampage that spanned several dozen miles Sunday in Novia Scotia before he was taken into custody, according to a Canadian law enforcement official.",
//    "url": "https://www.cnn.com/2020/04/19/americas/nova-scotia-shooting-mountie/index.html",
//    "urlToImage": "https://cdn.cnn.com/cnnnext/dam/assets/200419151826-01-canada-shooter-0419-super-tease.jpg",
//    "publishedAt": "2020-04-19T22:34:12Z",
//    "content": null
//  ]
//},


import Foundation

/// Array of Article objects.
//struct ArticleArray: Decodable {
//    private enum CodingKeys: String, CodingKey { case articles = "articles" }
//    var articles: [Article]
//}

/// Stores the original Article
//struct Article: Identifiable, Decodable {
//    private enum CodingKeys: String, CodingKey {
//        case author = "author"
//        case title = "title"
//        case description = "description"
//        case imgUrl = "urlToImage"
//    }
//
//    let id = UUID()
//    var author, title, description, imgUrl: String?
////    var source: Source
//}

//struct Source: Codable {
//    var source: String
//
//    enum CodingKeys: String, CodingKey {
//        case source = "source"
//    }
//}
