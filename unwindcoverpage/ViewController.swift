//
//  ViewController.swift
//  unwindcoverpage
//
//  Created by Apple on 7/31/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func memeButton(_ sender: Any) {
        
        performSegue(withIdentifier: "memeSegue", sender: self)
    }
    
    
    

}

