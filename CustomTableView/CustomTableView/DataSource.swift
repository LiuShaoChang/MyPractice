//
//  DataSource.swift
//  CustomTableView
//
//  Created by 刘少昌 on 2017/2/25.
//  Copyright © 2017年 S.L. All rights reserved.
//

import UIKit

class DataSource: NSObject {
    
    class Entity {
        let fisrtCharac:String
        let other:String
        init(firstCharacter:String, others:String) {
            self.fisrtCharac = firstCharacter
            self.other = others
        }
    }
    
    let elements = [
        Entity.init(firstCharacter: "A", others: "bc"),
        Entity.init(firstCharacter: "B", others: ""),
        Entity.init(firstCharacter: "C", others: "dd")
    ]
    
    

}
