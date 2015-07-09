//
//  RedViewController.swift
//  TuesdayJuly7Take7
//
//  Created by Russell Schmidt on 7/8/15.
//  Copyright (c) 2015 RussellSchmidt.net. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
  @IBOutlet weak var redStepper: UIStepper!
  @IBOutlet weak var tapLabel: UILabel!
  @IBOutlet weak var tapCounter: UILabel!

  // set up tapCount variable to count the user screen taps
  var tapCount: Double = 0.0

  override func viewDidLoad() {
      super.viewDidLoad()

        // Do any additional setup after loading the view.
        // set the inital stepper value to 2
      self.redStepper.value = 2.0
      // set the minimum/max value of stepper
      self.redStepper.minimumValue = 1.0
      self.redStepper.maximumValue = 5.0
      // have the stepper go back to 0.0 after 5.0
      self.redStepper.wraps = true
      // hardcode the step increment
      self.redStepper.stepValue = 1.0 //the default is 1.0

      // show the initial stepper value
      self.tapLabel.text = "\(Int(redStepper.value))"
      // show the initial tapCounter value
      self.tapCounter.text = "\(Int(self.tapCount))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  func popBack() {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }


  @IBAction func goBack(sender: AnyObject) {
    self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
  }


  @IBAction func stepperAction(sender: UIStepper) {
    self.tapLabel.text = "\(Int(redStepper.value))"

    // if you change the stepper, check to see if it equals the tap count to pop back
    if self.tapCounter.text!.toInt() == Int(self.redStepper.value){
        popBack()
    }
  }


  @IBAction func tapToDismiss(sender: UITapGestureRecognizer) {
    if self.tapCount >= self.redStepper.maximumValue {
      // set the min/max/wrap of the counters to the stepper
      self.tapCount = 1.0
      self.tapCounter.text = "\(Int(self.tapCount))"
    } else {
      self.tapCount += 1.0
      self.tapCounter.text = "\(Int(self.tapCount))"
    }
    // test to see if its time to pop back
    if self.tapCount == redStepper.value {
      popBack()
    }
  }
}
