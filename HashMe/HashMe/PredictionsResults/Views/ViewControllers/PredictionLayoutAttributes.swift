//
//  PredictionLayoutAttributes.swift
//  HashMe
//
//  Created by Dheeru on 10/9/17.
//  Copyright © 2017 Dheeru. All rights reserved.
//

import Foundation
import UIKit

class PredictionLayoutAttributes: UICollectionViewLayoutAttributes {
    
    override func copy(with zone: NSZone?) -> Any {
        let copy = super.copy(with: zone) as! PredictionLayoutAttributes
        return copy
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        return false
    }
}