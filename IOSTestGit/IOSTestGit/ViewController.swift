//
//  ViewController.swift
//  IOSTestGit
//
//  Created by Jose González on 1/23/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit



class ViewController: UIViewController, SideSelectionDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func seleccionarActionButton(_ sender: UIButton) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //Delegation
        secondVC.selectionDelegate = self
        
        present(secondVC, animated: true, completion:  nil)
        
    }
    
    
    func didTapChoice(color: UIColor) {
        
        view.backgroundColor = color
    }
    
    
}

//extension ViewController: SideSelectionDelegate {
//    func didTapChoice(color: UIColor) {
//
//        view.backgroundColor = color
//    }
//
//}
