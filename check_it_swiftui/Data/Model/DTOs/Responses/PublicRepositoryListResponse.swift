//
//  PublicRepositoryListResponse.swift
//  check_it
//
//  Created by Ademola Fadumo on 02/01/2024.
//

import Foundation

class PublicRepositoryListResponse: Codable {
    var repoName: String
    var fullName: String
    var owner: Owner?
    var repoDescription: String?
    
    enum CodingKeys: String, CodingKey {
        case repoName = "name"
        case fullName = "full_name"
        case owner
        case repoDescription = "description"
    }
}

class Owner: Codable {
    var avatarUrl: String
    var login: String
    
    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case login
    }
}
