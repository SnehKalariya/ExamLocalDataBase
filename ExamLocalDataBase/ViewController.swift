//
//  ViewController.swift
//  ExamLocalDataBase
//
//  Created by Sneh kalariya on 12/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fmdbHelper.createFile()
    }

    @IBAction func saveData(_ sender: UIButton) {
        if let x = idTextField.text,let y = Int(x){
            fmdbHelper.addData(name: nameTextField.text ?? "",id : y)
        }
    }
    
    @IBAction func getData(_ sender: UIButton) {
        let navigation = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        }
    @IBAction func deleteData(_ sender: UIButton) {
        if let x = idTextField.text,let y = Int(x){
            fmdbHelper.deleteData(name: nameTextField.text ?? "", id: y)
        }
    }

}




