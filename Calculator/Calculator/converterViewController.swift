//
//  converterViewController.swift
//  Calculator
//
//  Created by Benson Philipose on 11/10/17.
//  Copyright © 2017 Benson Philipose. All rights reserved.
//

import UIKit

class converterViewController: UIViewController {
//    struct conversion {
//        var label: String
//        var inputType: String
//        var outputType: String
//    }

    var Conversion = [
        conversion(label: "Fahrenheit to Celcius", inputType:   "°F", outputType: "°C"),
        conversion(label: "Celcius to Fahrenheit", inputType: "°C", outputType: "°F"),
        conversion(label: "Miles to Kilometers", inputType: "MI", outputType: "KM"),
        conversion(label: "Kilometers to Miles", inputType: "KM", outputType: "MI")]
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let loadConversion = Conversion[0]
        inputDisplay.text = loadConversion.inputType
        outputDisplay.text = loadConversion.outputType
        
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        let alert = UIAlertController(title:"Conversion", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
    
        for conversions in Conversion {
    alert.addAction(UIAlertAction(title: conversions.label, style: UIAlertActionStyle.default, handler: {
    (alertAction) -> Void in
    self.inputDisplay.text = conversions.inputType
    self.outputDisplay.text = conversions.outputType
    }))
        } }
    
    
    
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
