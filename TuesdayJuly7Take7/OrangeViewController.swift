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

  @IBOutlet var swipeGesture: UISwipeGestureRecognizer!
  
  var output: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      //self.orangeOutputLabel.text = outputText

      self.orangeOutputLabel.text = output
      self.orangeOutputLabel.textColor = UIColor.whiteColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  func goBack() {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }

  @IBAction func goBack(sender: AnyObject) {
    goBack()
  }


  @IBAction func swipeLeftToGoBack(sender: UISwipeGestureRecognizer) {
    goBack()
  }
}