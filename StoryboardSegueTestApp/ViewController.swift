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
    
    @IBAction func unwindToCustom(_ unwindSegue: UIStoryboardSegue) {
        print(self, #function)
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Source", segue.source, "Destination", segue.destination)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

