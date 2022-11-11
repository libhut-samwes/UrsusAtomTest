//
//  CueModel.swift
//  UrsusAtomTest
//
//  Created by Libhut Samwes on 10/22/22.
//

import Foundation

struct Response: Decodable {
    let p: Int
    let q: CueFeed
}

struct CueFeed: Decodable {
    let cue: [CueItem]
}

struct CueItem: Codable {
    enum CodingKeys: String, CodingKey {
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
    }
}
