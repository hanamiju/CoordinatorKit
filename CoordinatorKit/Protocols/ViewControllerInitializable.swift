//
//  ViewControllerInitializable.swift
//  CoordinatorKit
//
//  Created by masaosan on 2018/03/06.
//  Copyright © 2018年 masaosan All rights reserved.
//

import UIKit

public protocol ViewControllerInitializable: StoryboardInstantiatable where Self: UIViewController {
    associatedtype VCConfigurator: Configurator     // ViewControllerの依存を注入するプロトコル
    associatedtype Dependency                       // ViewControllerの依存を情報を持つプロトコル
    
    static func viewController(with dependency: Dependency) -> Self
}

public extension ViewControllerInitializable where VCConfigurator.VC == Self {
    public static func viewController(with dependency: Dependency) -> Self {
        
        let vc = Self.instantiate()
        VCConfigurator.configure(with: vc, dependency: dependency)
        
        return vc
    }
}

public extension ViewControllerInitializable where VCConfigurator.VC == Self, Dependency == Void {
    public static func viewController() -> Self {
        
        let vc = Self.instantiate()
        VCConfigurator.configure(with: vc, dependency: ())
        
        return vc
    }
}

public protocol Configurator {
    associatedtype VC: ViewControllerInitializable
    
    static func configure(with vc: VC, dependency: VC.Dependency)
}
