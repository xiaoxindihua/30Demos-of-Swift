//
//  TipModel.swift
//  Project02-TipCalculator
//
//  Created by 罗心 on 2019/3/22.
//  Copyright © 2019 faceall. All rights reserved.
//

import UIKit

class TipModel: NSObject {

    var inputNumber : Double = 0.0
    var tipRate : Double = 0.0
    var tipTotal : Double = 0.0

    var totalResult : Double = 0.0

    init(inputNumber: Double = 0, tipRate: Double = 0){

        self.inputNumber = inputNumber
        self.tipRate = tipRate
        self.tipTotal = inputNumber * tipRate
        self.totalResult = self.tipTotal + inputNumber
    }


}
