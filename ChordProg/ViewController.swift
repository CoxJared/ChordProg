//
//  ViewController.swift
//  ChordProg
//
//  Created by Jared Cox on 2021-01-04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyLbl: UILabel!
    @IBOutlet weak var chordProgressionLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let modes = ["major", "minor"]
    
    let majorKeys = ["A♭", "A","B♭", "B", "C", "D♭", "D", "E♭", "E", "F", "G♭", "G"];
    
    let majorProgressions = ["I  IV  V  I","I  ii  V  I", "I  vi  IV  V", "I  IV  ii  V", "I  IV  vi  V",  "I  V  vi  IV"];
    
    let minorKeys = ["a♭", "a", "b♭", "b", "c", "d♭", "d", "e♭", "e", "f", "g♭", "g"]
    
    let minorProgressions = ["i  v  IV  i", "i  IV  v  i", "i  iv  v", "ii  v  i", "i  iv  i", "VI  VII  i  i"]
    

    @IBAction func generateNewProgression(_ sender: Any) {
        let mode = modes.randomElement()
        if(mode == "major") {
            keyLbl.text = majorKeys.randomElement()
            chordProgressionLbl.text = majorProgressions.randomElement();
        } else {
            keyLbl.text = minorKeys.randomElement()
            chordProgressionLbl.text = minorProgressions.randomElement();
        }
    }
    
}

