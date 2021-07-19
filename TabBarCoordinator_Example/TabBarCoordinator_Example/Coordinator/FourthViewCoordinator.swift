//
//  FourthViewCoordinator.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/20.
//

import Foundation
import UIKit

class FourthViewCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinator: [Coordinator] = []

    var navigationController: UINavigationController!

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let fourthViewController = FourthViewController()
        fourthViewController.hidesBottomBarWhenPushed = true
        self.navigationController.pushViewController(fourthViewController, animated: true)
    }
}
