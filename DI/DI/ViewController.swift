//
//  ViewController.swift
//  DI
//
//  Created by Neosoft on 29/03/22.
//

import UIKit
import MyAppUIKit
import APIKit

extension APICaller: DataFetchable {}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton()
        button.frame = CGRect(x: 0, y: 0, width: 250, height: 50)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.center = view.center
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func buttonTapped() {
        let vc = MyViewController(dataFetchable: APICaller.shared)
        present(vc, animated: true)
    }

}

