//
//  Actor.swift
//  TestProject
//
//  Created by Владимир Ребриков on 29/01/2019.
//  Copyright © 2019 Владимир Ребриков. All rights reserved.
//

import UIKit

//struct ProfileElement: Codable {
//    var user: User
//    var postImage: String
//    var postLikes: Int
//    var postTags: String
//
//
// struct User: Codable {
//
//    var name, surname: String
//    var profilePic: String
//    var alboms: [Podcast]
//
//
//
// public struct Podcast: Codable {
//    var id: Int
//    var title: String
//    //var alboms: [Podcast]
//
//
// private struct Image: Codable {
//    var id: Int
//    var url: String
//    var images: [Image]
//}
//}
//    init(from decoder: Decoder) throws {
//        let rawResponse = try ProfileElement(from: decoder)
//        let rrawResponse = try User(from: decoder)
//        let rrrawResponse = try Podcast(from: decoder)
//
//        // Now pick the pieces you want
//        self.name     = rrawResponse.name
//        self.surname     = rrawResponse.surname
//        self.profilePic     = rrawResponse.profilePic
//
//
//        self.alboms = rrrawResponse.title
//        self.alboms = rrrawResponse.id
//        self.id = rrrawResponse.alboms.id
//
//
//    }
//}
//}
//struct ProfileElement: Codable {
//    let user: User
//    let postImage: String
//    let postLikes: Int
//    let postTags: String
//
//    enum CodingKeys: String, CodingKey {
//        case user = "user"
//        case postImage = "post_image"
//        case postLikes = "post_likes"
//        case postTags = "post_tags"
//    }
//}
//
//struct User: Codable {
//    let name: String
//    let surname: String
//    let profilePic: String
//    let albums: [Album]
//
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//        case surname = "surname"
//        case profilePic = "profile_pic"
//        case albums = "albums"
//    }
//}
//
//struct Album: Codable {
//    let id: Int
//    let title: String
//    let images: [Image]
//
//    enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case title = "title"
//        case images = "images"
//    }
//}
//
//struct Image: Codable {
//    let id: Int
//    let url: String
//
//    enum CodingKeys: String, CodingKey {
//        case id = "id"
//        case url = "url"
//    }
//}
//typealias Codable = Encodable & Decodable
//
//struct ProfileElement: Codable {
//    let user: User
//
//    let postImage: String
//    let postLikes: Int
//    let postTags: String
//
//    enum CodingKeys: String, CodingKey {
//        case user
//
//        case postImage = "post_image"
//        case postLikes = "post_likes"
//        case postTags = "post_tags"
//    }
//}
//
//struct User: Codable {
//    let name, surname: String
//    let profilePic: String
//    let albums: Album
//
//    enum CodingKeys: String, CodingKey {
//        case name, surname
//        case profilePic = "profile_pic"
//        case albums
//    }
//}
//
//struct Album {
//    let id: Int
//    let title: String
//    var images: [Image]
//    enum AlbumKeys: String, CodingKey {
//                case id = "id"
//                case title = "title"
//                case images = "images"
//    }
//}
//struct Image: Codable {
//    let id: Int
//    let url: String
//
//    enum CCodingKeys: String, CodingKey {
//        case id = "id"
//        case url = "url"
//    }
//}
//
//extension Album: Decodable {
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: AlbumKeys.self)
//        title = try values.decode(String.self, forKey: .title)
//        id = try values.decode(Int.self, forKey: .id)
//        images = try values.decode([Image].self, forKey: .images)
//    }
//}
//extension Album: Encodable {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: AlbumKeys.self)
//        try container.encode(id, forKey: .id)
//        try container.encode(title, forKey: .title)
//        try container.encode(images, forKey: .images)
//    }
//}



//extension Image: Decodable {
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CCodingKeys.self)
//        self.url = try values.decode(String.self, forKey: .url)
//        self.id = try values.decode(Int.self, forKey: .id)
//
//    }
//}
//extension Image: Encodable {
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CCodingKeys.self)
//        try container.encode(id, forKey: .id)
//        try container.encode(url, forKey: .url)
//
//    }
//}
 struct ProfileElement: Decodable {
    let user: User
    
    let postImage: String
    let postLikes: Int
    let postTags: String
}
 struct User: Decodable {
    let name, surname: String
    let profilePic: String
    let albums: [Album]
   
}

public struct Album : Decodable {
    let id: Int
    let title: String
    let images: [Image]
   
}
public struct Image: Decodable {
    let id: Int
    let url: String
 

}
