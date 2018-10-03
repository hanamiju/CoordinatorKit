//
//  FirstViewConfigulator.swift
//  CoordinatorSample
//
//  Created by masao on 2018/10/03.
//  Copyright © 2018年 masaosan. All rights reserved.
//

import CoordinatorKit

struct FirstViewDependency {
    let buttonTitle: String
}

struct FirstViewConfigurator: Configurator {
    typealias VC = FirstViewController

    static func configure(with vc: FirstViewController, dependency: FirstViewDependency) {

        let coordinator = FirstViewCoordinator(currentVC: vc)
        vc.coordinator = coordinator
        vc.dependency = dependency
    }
}
