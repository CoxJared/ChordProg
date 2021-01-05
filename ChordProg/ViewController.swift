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
    
    let keys = ["A♭", "A","B♭", "B", "C", "D♭", "D", "E♭", "E", "F", "G♭", "G"];
    let progressions = ["I  IV  V  I","I  ii  V  I", "I  vi  IV  V", "I  IV  ii  V", "I  IV  vi  V",  "I  V  vi  IV"];

    @IBAction func generateNewProgression(_ sender: Any) {
        keyLbl.text = keys.randomElement()
        chordProgressionLbl.text = progressions.randomElement();
    }
    
}

