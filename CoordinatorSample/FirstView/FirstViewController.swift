//
//  FirstViewController.swift
//  CoordinatorSample
//
//  Created by masao on 2018/10/03.
//  Copyright © 2018年 masaosan. All rights reserved.
//

import UIKit
import CoordinatorKit

final class FirstViewController: UIViewController, ViewControllerInitializable {

    typealias VCConfigurator = FirstViewConfigurator
    typealias Dependency = FirstViewDependency
    @IBOutlet weak var button: UIButton!

    var coordinator: FirstViewCoordinator!
    var dependency: Dependency!

    override func viewDidLoad() {
        super.viewDidLoad()

        button.setTitle(dependency.buttonTitle, for: .normal)
    }

    @IBAction func tapped(_ sender: Any) {
        coordinator.pushSecondView(with: SecondViewDependency(text: "Second View"))
    }
}

