//
//  ViewController.swift
//  Common Controls
//
//  Created by Jonathan Burnett on 16/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets - Link Ui from the Storyboard to the ViewController
    @IBOutlet weak var toggle: UISwitch!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Tap Function to find and print the tap location
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        // find the location of the users tap and print this to the log
        let location = sender.location(in: view)
        print(location)
    }
    
    // Button Presses
    @IBAction func buttonTapped(_ sender: Any) {
        print("Button was tapped")
        // look to see if the toggle is on or off and print the following if so.
            if toggle.isOn {
                print("The switch is on!")
            } else {
                print("The switch is off.")
            }
        // print the sliders value
            print("The slider is set to \(slider.value)")
    }
    
    // print if the toggle is on or off
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn{
            print("The switch is on")
        } else{
            print("The switch is off")
        }
    }
    
    //print the sliders value
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    // when the retun key is pressed on the keyboard, print the text in the text field
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    // prints every leter typed in the text field to the log
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
}

