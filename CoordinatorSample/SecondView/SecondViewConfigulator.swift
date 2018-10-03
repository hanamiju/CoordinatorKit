//
//  SecondViewConfigulator.swift
//  CoordinatorSample
//
//  Created by masao on 2018/10/03.
//  Copyright © 2018年 masaosan. All rights reserved.
//

import CoordinatorKit

struct SecondViewDependency {
    let text: String
}

struct SecondViewConfigurator: Configurator {
    typealias VC = SecondViewController

    static func configure(with vc: SecondViewController, dependency: SecondViewDependency) {

        vc.dependency = dependency
    }
}
