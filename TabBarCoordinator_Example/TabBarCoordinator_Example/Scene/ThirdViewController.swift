//
//  ThirdViewController.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/19.
//

import UIKit

class ThirdViewController: UIViewController {
    weak var coordinator: Coordinator?
    private weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    func setupViews() {
        let titleLabel = UILabel()
        titleLabel.text = "Third VC"
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.addSubview(titleLabel)
        self.titleLabel = titleLabel

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
