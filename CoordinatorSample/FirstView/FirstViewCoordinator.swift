//
//  FirstViewCoordinator.swift
//  CoordinatorSample
//
//  Created by masao on 2018/10/03.
//  Copyright © 2018年 masaosan. All rights reserved.
//

import UIKit

struct FirstViewCoordinator {

    private weak var currentVC: UIViewController?

    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }

    // MARK: -
    func pushSecondView(with dependency: SecondViewDependency) {
        let vc = SecondViewController.viewController(with: dependency)
        self.currentVC?.navigationController?.pushViewController(vc, animated: true)
    }
}
