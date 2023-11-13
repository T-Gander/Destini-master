//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnChoice1.titleLabel?.adjustsFontSizeToFitWidth = true
        btnChoice2.titleLabel?.adjustsFontSizeToFitWidth = true
        updateUi()
    }

    @IBAction func SelectedChoice(_ sender: UIButton) {
        storyBrain.decision(decision: sender.titleLabel!.text!)
        updateUi()
    }
    
    func updateUi(){
        lblQuestion.text = storyBrain.getCurrentStory()
        btnChoice1.setTitle(storyBrain.getChoice1(), for: .normal)
        btnChoice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
    @IBOutlet weak var btnChoice1: UIButton!
    @IBOutlet weak var btnChoice2: UIButton!
    @IBOutlet weak var lblQuestion: UILabel!
}

