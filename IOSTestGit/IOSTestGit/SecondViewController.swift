//
//  SecondViewController.swift
//  IOSTestGit
//
//  Created by Jose González on 1/24/19.
//  Copyright © 2019 Jose Gonzalez. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(color:UIColor)
}

class SecondViewController: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func blancoActionButton(_ sender: UIButton) {
    
        
        selectionDelegate.didTapChoice(color: .blue)
        
        dismiss(animated: true, completion: nil)

    }
    
    @IBAction func negroActionButton(_ sender: UIButton) {
    
        dismiss(animated: true, completion: nil)
        selectionDelegate.didTapChoice(color: .black)

    
    }
    
    

}
