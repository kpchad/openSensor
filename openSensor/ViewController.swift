//
//  ViewController.swift
//  openSensor
//
//  Created by Kyle Chadwick on 12/2/17.
//  Copyright © 2017 Kyle Chadwick. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {

    @IBAction func consentTapped(_ sender: Any) {
        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
    extension ViewController : ORKTaskViewControllerDelegate {
        
        func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
            //Handle results with taskViewController.result
            taskViewController.dismiss(animated: true, completion: nil)
        }
        
    }

