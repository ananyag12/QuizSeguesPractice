//
//  ViewController.swift
//  QuizSeguesPractice
//
//  Created by  Scholar on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    var score = 0;
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text ==  "Yes" {
            score = score + 10;
        } else {
            score = score - 10
        }
    }
    
    @IBAction func nextScreenPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNext",  sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? SecondViewController
            if let name = nameTextField.text{
                destinationVC?.name = nameTextField.text!
                destinationVC?.score = score
            }
        }
    }
    




}

