//
//  ViewController.swift
//  Project01_Tap or Hold Counter
//
//  Created by 罗心 on 2019/3/21.
//  Copyright © 2019 faceall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func resetButtonClick(_ sender: UIBarButtonItem) {
        counterLabel.text = "0"
    }


    @IBAction func counterButtonClick(_ sender: UIButton) {
        if let tempNum = Int(counterLabel.text!){

            counterLabel.text = "\(tempNum + 1)"
        }

    }

    @IBAction func longPressed(_ sender: UILongPressGestureRecognizer) {
        print(sender.state.rawValue)

        if sender.state == .changed {

            if let tempNum = Int(self.counterLabel.text!) {
                self.counterLabel.text = "\(tempNum + 1)"
            }
        }

    }


}

