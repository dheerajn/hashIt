//
//  EmailViewModel.swift
//  HashMe
//
//  Created by Dheeru on 12/25/17.
//  Copyright © 2017 Dheeru. All rights reserved.
//

import Foundation

class EmailViewModel: EmailViewConfigurable {
    
    var flowDelegate: HashTagFlowDelegate?
    
    var recipients: [String]? {
        return ["test@test.com"]
    }
    
    var subject: String? {
        return "test subject"
    }
}