//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Nicole Dillon on 4/19/19.
//  Copyright © 2019 Nicole Dillon. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var colorPickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    let colors = [Color(name: "red", color: UIColor.red),
                  Color(name: "orange", color: UIColor.orange),
                  Color(name: "yellow", color: UIColor.yellow),
                  Color(name: "green", color: UIColor.green),
                  Color(name: "blue", color: UIColor.blue),
                  Color(name: "purple", color: UIColor.purple)]
    
    let initalColor = 0

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row].name
        self.view.backgroundColor = colors[row].color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPickerView.delegate = self
        let colorDisplay = colors[initalColor]
        self.view.backgroundColor = colorDisplay.color
        self.label.text = colorDisplay.name
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
