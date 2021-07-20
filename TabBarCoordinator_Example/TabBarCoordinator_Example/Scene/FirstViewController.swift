//
//  FirstViewController.swift
//  TabBarCoordinator_Example
//
//  Created by 여정수 on 2021/07/19.
//

import UIKit

class FirstViewController: UIViewController {
    weak var coordinator: FirstViewCoordinator?
    private weak var titleLabel: UILabel!
    private weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    func setupViews() {
        let titleLabel = UILabel()
        titleLabel.text = "First VC"
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.addSubview(titleLabel)
        self.titleLabel = titleLabel

        let button = UIButton()
        button.setTitle("Push FourthVC", for: .normal)
        button.backgroundColor = .systemGray
        button.addTarget(self, action: #selector(pushFourthVC), for: .touchUpInside)
        view.addSubview(button)
        self.button = button

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }

    @objc func pushFourthVC() {
        coordinator?.pushFourthVC()
    }
}

