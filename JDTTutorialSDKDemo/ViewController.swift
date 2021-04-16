//
//  ViewController.swift
//  JDTTutorialSDKDemo
//
//  Created by JustinTsou on 2021/4/13.
//

import UIKit
import JDTTutorialSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tutorialView = TutorialView.init(text: "Test", frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 100))
        tutorialView.center = self.view.center
        self.view.addSubview(tutorialView)
    }
}

