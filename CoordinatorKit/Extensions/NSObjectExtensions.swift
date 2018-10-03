//
//  NSObjectExtensions.swift
//  CoordinatorKit
//
//  Created by masaosan on 2018/03/06.
//  Copyright © 2018年 masaosan All rights reserved.
//

import Foundation

extension NSObject {
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}
