//
//  Trustline.swift
//  stellar-ios
//
//  Created by Vijay Karunamurthy on 8/11/14.
//  Copyright (c) 2014 vjkaruna. All rights reserved.
//

import Foundation
import SwiftyJSON

class Trustline {
    var currency: String?
    var account: String?
    var limit: Int?
    var balance: Int?
    
    init(json: JSON) {
        print("in init trustline")
        currency = json["currency"].string
        account = json["account"].string
        limit = json["limit"].int
        balance = json["balance"].int
    }
    
    var description: String {
        return "trust \(limit)"
    }
}