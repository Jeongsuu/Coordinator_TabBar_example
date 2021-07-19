//
//  SecondViewCoordinator.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/19.
//

import Foundation
import UIKit

class SecondViewCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinator: [Coordinator] = []
//    var navigationController: UINavigationController
//
//    init(_ navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }

    func start() {

    }

    func startPush() -> SecondViewController {
        let secondViewController = SecondViewController()
        secondViewController.view.backgroundColor = .blue

        return secondViewController
    }

}
