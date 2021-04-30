//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Ibrahim on 4/8/21.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = ""
        var timerDelay = 0.0
        let titleText = K.appName
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * timerDelay, repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            timerDelay += 1
        }
//       You can make this by using pod 'CLTypingLabel', '~> 0.4.0' in 1 line
       
    }
    

}
