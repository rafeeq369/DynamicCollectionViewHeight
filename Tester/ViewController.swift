//
//  ViewController.swift
//  Tester
//
//  Created by intelmac on 02/07/21.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
           
    var previousDate = Date()
        var now = Date()
    @IBAction func StartBtnTaped(_ sender: UIButton) {
        previousDate = Date()
    }
    @IBAction func EndBtnTaped(_ sender: UIButton) {
        now = Date()
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.allowedUnits = [.month, .day, .hour, .minute, .second]
        formatter.maximumUnitCount = 2
        var string = formatter.string(from: previousDate, to: now)

        string!.remove(at: string!.index(before: string!.endIndex))
        let range = string!.index(string!.endIndex, offsetBy: -6)..<string!.endIndex
        string!.removeSubrange(range)

        let myInt = (string as! NSString).integerValue

        if myInt <= 30 {
            print("Wait Few More Seconds")
        }
        else{
            print("Times Up!")
        }
    }
}

