//
//  ViewController.swift
//  FontistoiOS
//
//  Created by semihemreunlu on 11/09/2017.
//  Copyright (c) 2017 semihemreunlu. All rights reserved.
//

import UIKit
import FontistoiOS

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.font = UIFont().Fontisto(size: 48)
        label.text = ":fontisto:".fontistoIcon
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

