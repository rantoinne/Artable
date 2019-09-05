//
//  ViewController.swift
//  Artable
//
//  Created by Ravi on 28/08/19.
//  Copyright © 2019 Ravi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        present(controller, animated: true, completion: nil)
    }

}

