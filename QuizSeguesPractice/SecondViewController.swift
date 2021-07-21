//
//  SecondViewController.swift
//  QuizSeguesPractice
//
//  Created by  Scholar on 7/19/21.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name : String = ""
    var score : Int = 0
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text =  "Congratulations, \(name) you've earned \(score) points!"
        // Do any additional setup after loading the view.
    }
    
   
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
