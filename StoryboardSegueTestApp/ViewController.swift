//
//  ViewController.swift
//  StoryboardSegueTestApp
//
//  Created by racoon on 6/1/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onPressMenualSegue(_ sender: Any) {
        
        performSegue(withIdentifier: SegueId.menualSegue.rawValue, sender: nil
        )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

