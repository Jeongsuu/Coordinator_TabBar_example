//
//  FirstViewCoordinator.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/19.
//

import Foundation
import UIKit

class FirstViewCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinator: [Coordinator] = []
    var navigationController: UINavigationController

    init() {
        self.navigationController = .init()
    }

    func start() {
    }

    func startPush() -> UINavigationController {
        let firstViewController = FirstViewController()
        firstViewController.delegate = self
        firstViewController.view.backgroundColor = .white
        navigationController.setViewControllers([firstViewController], animated: false)

        return navigationController
    }
}

extension FirstViewCoordinator: FirstViewModelDelegate {
    func pushFourthVC() {
        let fourthViewCoordinator = FourthViewCoordinator(navigationController: navigationController)
        fourthViewCoordinator.parentCoordinator = self
        childCoordinator.append(fourthViewCoordinator)
        fourthViewCoordinator.start()
    }
}
