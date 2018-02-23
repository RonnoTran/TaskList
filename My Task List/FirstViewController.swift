//
//  FirstViewController.swift
//  My Task List
//
//  Created by Nam ML on 2018-02-14.
//  Copyright © 2018 Ron Tran. All rights reserved.
//

import UIKit

// put this here to make it global 
var list = ["Buy milk", "Prepare for presentation", "Study for Quiz"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    // define how many rows we want in our table view
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        // go through all of the items in the query
        cell.textLabel?.text = list[indexPath.row]
        
        return (cell)
    }
    
    // allows us to remove/delete an item simply by swiping left
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        // check if the deleting swipe wasn't deleting swipe
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            list.remove(at: indexPath.row)
            // refresh/update the table
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
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

