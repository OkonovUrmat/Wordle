//
//  ViewController.swift
//  Wrodle
//
//  Created by Urmat on 9/3/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // UI
    // Keyboard
    // Game board
    // Orange/Green
    
    let keyboardVC = KeyboardVC()
    let boardVC = BoardVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray3
        
        addChildren()
    }

    private func addChildren() {
        addChild(keyboardVC)
        keyboardVC.didMove(toParent: self)
        keyboardVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(keyboardVC.view)
        
        addChild(boardVC)
        boardVC.didMove(toParent: self)
        boardVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(boardVC.view)
        
        addConstraints()
    }

    private func addConstraints() {
        boardVC.view.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(keyboardVC.view.snp.top)
            make.height.equalToSuperview().multipliedBy(0.6)
        }
        
        keyboardVC.view.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    }
    
}

