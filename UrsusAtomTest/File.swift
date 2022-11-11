//
//  File.swift
//  UrsusAtomTest
//
//  Created by Libhut Samwes on 10/21/22.
//

import Foundation
import UrsusAtom
import UrsusHTTP


struct testValues {
    
    static let ship = try! PatP(string: "~bel")
    
    static public let client = Client(url: URL(string: "http://localhost")!, code: "pinmer-dismel-digsev-todnec")
    static public var loginResult = client.loginRequest() { result in
        switch result {
        case .success(let ship):
            client.connect()
            let request = client.scryRequest(app: "cue", path: "/entries/all")
            request.responseDecodable(of: Response.self) { response in
                print(response)
            }
            request.responseJSON { data in
                guard let payload = data.value as? [String: Any] else { return }
                let prettyPayload = payload as NSDictionary
                let q = prettyPayload["q"]! as! NSDictionary
//                print(type(of:q["cue"]!))
                print(prettyPayload)
            }
        case .failure(let error):
            print("failure: \(error)")
        }
    }
}
