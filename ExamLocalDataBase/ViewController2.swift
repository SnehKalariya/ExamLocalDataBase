//
//  ViewController2.swift
//  ExamLocalDataBase
//
//  Created by Sneh kalariya on 12/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var array2 = fmdbHelper.getData()

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell")as! MyTableViewCell
        cell.id.text = array2[indexPath.row].id.description
        cell.name.text = array2[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
