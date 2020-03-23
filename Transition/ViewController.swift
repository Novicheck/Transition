//
//  ViewController.swift
//  Transition
//
//  Created by Denis on 20.03.2020.
//  Copyright © 2020 Denis. All rights reserved.
//

import UIKit
import SPStorkController

class ViewController: UIViewController {
    
    let controller = UIViewController()
    let transitionDelegate = SPStorkTransitioningDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func presentButtonTapped(_ sender: Any) {
        guard let secondVC = storyboard?.instantiateViewController(identifier: "secondVC") else {return}
        transitionDelegate.cornerRadius = 30
        transitionDelegate.customHeight = 500
        transitionDelegate.hapticMoments = [.willPresent, .willDismiss]
        secondVC.transitioningDelegate = transitionDelegate
        secondVC.modalPresentationStyle = .custom
        secondVC.modalPresentationCapturesStatusBarAppearance = true
        present(secondVC, animated: true, completion: nil)
    }
}

