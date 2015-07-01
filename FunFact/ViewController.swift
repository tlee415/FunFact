//
//  ViewController.swift
//  FunFact
//
//  Created by Terry Lee on 1/25/15.
//  Copyright (c) 2015 Terry Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!

    // instance variables
    var dataModel = DataModel()
    var colorWheel = ColorWheel()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var randomColor: UIColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = dataModel.randomFact()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showAnotherFunFact() {
        var randomColor: UIColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = dataModel.randomFact()
    }

}

