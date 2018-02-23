//
//  SecondViewController.swift
//  My Task List
//
//  Created by Nam ML on 2018-02-14.
//  Copyright © 2018 Ron Tran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    
    @IBAction func addItem(_ sender: Any) {
        if (input.text != "")
        {
            list.append(input.text!)
            // refresh the input so the user can enter new one 
            input.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

