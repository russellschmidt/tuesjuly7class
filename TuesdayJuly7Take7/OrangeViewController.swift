//
//  OrangeViewController.swift
//  TuesdayJuly7Take7
//
//  Created by Russell Schmidt on 7/8/15.
//  Copyright (c) 2015 RussellSchmidt.net. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

  @IBOutlet weak var orangeOutputLabel: UILabel!

<<<<<<< HEAD
  var output: String?
=======
  var output: String = ""
>>>>>>> 45ca512d470a43ba5ff89fc111e4edd877e370da

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      //self.orangeOutputLabel.text = outputText

      self.orangeOutputLabel.text = output
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func goBack(sender: AnyObject) {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }
}