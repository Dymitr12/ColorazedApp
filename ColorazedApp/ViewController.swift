//
//  ViewController.swift
//  ColorazedApp
//
//  Created by Dymitr on 04.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        redSlider.value = 0.1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0.1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0.1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    override func viewDidLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.width / 60
  }
  
    @IBAction func ColorSetting() {
        settingLabel()
        
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
        
        private func settingLabel() {
        redLabel.text = String(redSlider.value)
        greenLabel.text = String(greenSlider.value)
        blueLabel.text = String(blueSlider.value)
        
    }
    
}
