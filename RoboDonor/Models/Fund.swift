//
//  Fund.swift
//  RoboDonor
//
//  Created by Adam Braus on 4/19/20.
//  Copyright © 2020 Adam Braus. All rights reserved.
//

//{
//  "funds": [ {
//    "name": ""
//    "description": "A gunman may have shot up to 10 people, including at least one Mountie, in a rampage that spanned several dozen miles Sunday in Novia Scotia before he was taken into custody, according to a Canadian law enforcement official.",
//    "imgUrl": "https://cdn.cnn.com/cnnnext/dam/assets/200419151826-01-canada-shooter-0419-super-tease.jpg",
//    "createdAt": "2020-04-19T22:34:12Z",
//    "updatedAt": "2020-04-19T22:34:12Z"
//   }, {...}
//  ]
//},


import Foundation

/// Array of Fund objects.
struct FundArray: Decodable {
    private enum CodingKeys : String, CodingKey { case funds = "funds" }
    let funds: [Fund]
}

/// Stores the original Fund
struct Fund: Decodable {
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case icon = "icon"
        case imgUrl = "imgUrl"
        
    }
    
    var id: Int?
    var name, description, icon, imgUrl: String?
}
