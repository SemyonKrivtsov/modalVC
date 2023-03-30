//
//  ViewController.swift
//  modalVC
//
//  Created by Семён Кривцов on 30.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let rect = CGRect(x: 200, y: 200, width: 200, height: 70)
        let button = UIButton(frame: rect)
        button.addTarget(self, action: #selector(touch), for: .touchUpInside)
        button.setTitle("Go to second", for: .normal)
        view.addSubview(button)
    }

    @objc func touch() {
       let vc2 = SecondVC()
//        vc2.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        vc2.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
        present(vc2, animated: true)
    }
}

