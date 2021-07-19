//
//  AppCoordinator.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/19.
//

import Foundation
import UIKit

// MARK: - Coordinator Protocol
protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
//    var navigationController: UINavigationController { get set }

    func start()
}

class AppCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    let window: UIWindow?

    private var firstViewController: UIViewController!
    private var secondViewController: UIViewController!
    private var thirdViewController: UIViewController!

    init(_ window: UIWindow?) {
        self.window = window
        window?.makeKeyAndVisible()
    }

    func start() {
        let tabBarController = self.setTabBarController()
        self.window?.rootViewController = tabBarController
    }

    func setTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()

        let firstItem = UITabBarItem(title: "First", image: nil, tag: 0)
        let secondItem = UITabBarItem(title: "Second", image: nil, tag: 1)
        let thirdItem = UITabBarItem(title: "Third", image: nil, tag: 2)

        let firstViewCoordinator = FirstViewCoordinator()
        firstViewCoordinator.parentCoordinator = self
        childCoordinator.append(firstViewCoordinator)
        let firstViewController = firstViewCoordinator.startPush()
        firstViewController.tabBarItem = firstItem

        let secondViewCoordinator = SecondViewCoordinator()
        secondViewCoordinator.parentCoordinator = self
        childCoordinator.append(secondViewCoordinator)
        let secondViewController = secondViewCoordinator.startPush()
        secondViewController.coordinator = self
        secondViewController.tabBarItem = secondItem

        let thirdViewCoordinator = ThirdCoordinator()
        thirdViewCoordinator.parentCoordinator = self
        childCoordinator.append(thirdViewCoordinator)
        let thirdViewController = thirdViewCoordinator.startPush()
        thirdViewController.tabBarItem = thirdItem

        tabBarController.viewControllers = [firstViewController, secondViewController, thirdViewController]

        return tabBarController
    }
}
