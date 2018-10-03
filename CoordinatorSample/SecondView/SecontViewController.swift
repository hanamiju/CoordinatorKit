//
//  SecondViewController.swift
//  CoordinatorSample
//
//  Created by masao on 2018/10/03.
//  Copyright © 2018年 masaosan. All rights reserved.
//

import UIKit
import CoordinatorKit

final class SecondViewController: UIViewController, ViewControllerInitializable {

    typealias VCConfigurator = SecondViewConfigurator
    typealias Dependency = SecondViewDependency

    var dependency: Dependency!

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = dependency.text
    }
}
