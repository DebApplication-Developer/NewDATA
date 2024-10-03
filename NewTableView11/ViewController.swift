//
//  ViewController.swift
//  NewTableView11
//
//  Created by CoderPath on 03/10/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var Item = ["1","2","3"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Item.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

                // Configure the cell
                cell.textLabel?.text = Item[indexPath.row]

                return cell
    }
    

    @IBOutlet weak var data12: UITableView!
    
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        data12.delegate = self
        data12.dataSource = self

        data12.reloadData()
        print("kk")
        
        
    }


}

