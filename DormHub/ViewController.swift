//
//  ViewController.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Sara is dumb #treeHacks2017

    @IBAction func goToClasses(_ sender: UIButton) {
        self.performSegue(withIdentifier: "classes", sender: self);
    }
    
    
}

