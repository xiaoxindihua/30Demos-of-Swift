//
//  TipViewController.swift
//  Project02-TipCalculator
//
//  Created by 罗心 on 2019/3/22.
//  Copyright © 2019 faceall. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet var tipView: TipView!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    var tipModel : TipModel = TipModel(inputNumber: 0, tipRate: 0)


    override func viewDidLoad() {
        super.viewDidLoad()


        tipSlider.isEnabled = false
        tipSlider.value = 0.15

        inputTextField.delegate = self

        createTextFieldTopButton()

    }




    func createTextFieldTopButton() {
        let toolbar = UIToolbar()
        let barBtn = UIBarButtonItem.init(title: "Done", style: .plain, target: self, action: #selector(TipViewController.endInPut))

        let flexItem = UIBarButtonItem.init(barButtonSystemItem: .flexibleSpace, target: self, action: #selector(TipViewController.endInPut))

        toolbar.setItems([flexItem,barBtn], animated: true)
        toolbar.sizeToFit()

        inputTextField.inputAccessoryView = toolbar
    }

    @objc func endInPut() {
        inputTextField.resignFirstResponder()

        guard let inputText = inputTextField.text else {return}
        if inputText == ""{
            return
        }

        self.tipModel.tipRate = Double(tipSlider!.value)
        self.tipModel.inputNumber = Double(inputText)!
        self.tipView.tipModel = self.tipModel

    }


}


extension TipViewController: UITextFieldDelegate{

    func textFieldDidBeginEditing(_ textField: UITextField) {
        tipSlider.isEnabled = false
    }

    func textFieldDidEndEditing(_ textField: UITextField) {

        if textField.text != ""{
            tipSlider.isEnabled = true

        }
    }



}
