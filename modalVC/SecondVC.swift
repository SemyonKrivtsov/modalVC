//
//  SecondVC.swift
//  modalVC
//
//  Created by Семён Кривцов on 30.03.2023.
//

import UIKit

class SecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .green
        let rect = CGRect(x: 100, y: 100, width: 200, height: 70)
        let button = UIButton(frame: rect)
        button.addTarget(self, action: #selector(touch), for: .touchUpInside)
        button.setTitle("Go back", for: .normal)
        view.addSubview(button)
    }
    
    @objc func touch() {
       dismiss(animated: true)
    }

}
