//
//  ViewController.swift
//  Rainbow Road
//
//  Created by Jihun Kang on 1/11/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple]

    @IBOutlet weak var colorTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
    
}
