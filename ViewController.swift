//
//  ViewController.swift
//  ColorMixer
//
//  Created by Jonathan Quach on 12/7/16.
//  Copyright © 2016 QuachLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            colorView.backgroundColor = .black
            colorView.layer.borderWidth = 5
            colorView.layer.cornerRadius = 20
            colorView.layer.borderColor = UIColor.black.cgColor;
            
            updateControls();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
         if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
         if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value);
        }
        
        
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
    }
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls();
    }
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBOutlet weak var redSlider: UISlider!
    
    
    @IBOutlet weak var greenSlider: UISlider!
    
    
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderChange(_ sender: AnyObject) {
        updateColor();
    }
    
    
    @IBAction func reset(_ sender: Any) {
        redSwitch.isOn = false;
        blueSwitch.isOn = false;
        greenSwitch.isOn = false;
        
        redSlider.value = 1;
        blueSlider.value = 1;
        greenSlider.value = 1;
        updateColor()
        updateControls()
    }
    
    
    
    
}
