//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Mücahit Alperen Eryılmaz on 1.11.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Simpson Objects
        
        let bart = Simposon(name: "Bart", job: "Developer", image: UIImage(named: "bart")!)
        let lisa = Simposon(name: "Lisa", job: "Police", image: UIImage(named: "lisa")!)
        let maggie = Simposon(name: "Maggie", job: "Doctor", image: UIImage(named: "maggie")!)
        let marge = Simposon(name: "Marge", job: "meslek", image: UIImage(named: "marge")!)
         
        let homerArray = [bart, lisa, maggie, marge]
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Homer Simpson"
        
        return cell
    }
    
    
    
    


}

