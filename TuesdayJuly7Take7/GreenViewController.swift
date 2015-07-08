//
//  GreenViewController.swift
//  TuesdayJuly7Take7
//
//  Created by Russell Schmidt on 7/8/15.
//  Copyright (c) 2015 RussellSchmidt.net. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBOutlet weak var textField: UITextField!

  @IBAction func goButton(sender: AnyObject) {

    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    let vc = storyboard.instantiateViewControllerWithIdentifier("orangeVC") as! OrangeViewController

    vc.output = "I am Green"

    self.presentViewController(vc, animated: true, completion: nil)

  }
}
