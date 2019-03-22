//
//  TipView.swift
//  Project02-TipCalculator
//
//  Created by 罗心 on 2019/3/22.
//  Copyright © 2019 faceall. All rights reserved.
//

import UIKit

class TipView: UIView {

    var tipModel : TipModel?{
        didSet{

            let tips = (tipModel?.inputNumber)! * Double((tipModel?.tipRate)!)
            let totalResult = tips + (tipModel?.inputNumber)!
            let rateString = String(format: "%.0f", ((tipModel?.tipRate)! * 100))

            tipLabel.text = "Tip(\(rateString)%)"
            tipResultLabel.text = String(format: "$%.2f", tips)
            totalLabel.text = "Total:"
            totalResultLabel.text = String(format: "$%.2f", totalResult)

        }
    }

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipResultLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!


    @IBAction func tipSliderChanged(_ sender: UISlider) {

        guard let inputText = inputTextField.text else {return}

        self.tipModel = TipModel(inputNumber: Double(inputText)! , tipRate: Double(sender.value))

    }


    

}
