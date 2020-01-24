//
//  MainViewController.swift
//  DraggableView
//
//  Created by Damon Cricket on 24.01.2020.
//  Copyright © 2020 DC. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var draggableView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        draggableView.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 50.0)
        draggableView.center = view.center
        draggableView.backgroundColor = .black
        view.addSubview(draggableView)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizer(recognizer:)))
        view.addGestureRecognizer(panGestureRecognizer)
    }
    
    @objc func panGestureRecognizer(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: view)
        draggableView.center = CGPoint(x: draggableView.center.x + translation.x, y: draggableView.center.y + translation.y)
        recognizer.setTranslation(.zero, in: view)
    }
}
