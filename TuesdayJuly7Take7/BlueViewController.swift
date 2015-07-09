//
//  BlueViewController.swift
//  TuesdayJuly7Take7
//
//  Created by Russell Schmidt on 7/8/15.
//  Copyright (c) 2015 RussellSchmidt.net. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

  @IBOutlet var longPressGesture: UILongPressGestureRecognizer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
      //how long in seconds you need to hold down the long press. Default is 0.5 sec
      self.longPressGesture.minimumPressDuration = 2.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(sender: AnyObject) {
      self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }

  @IBAction func longpressToRed(sender: UILongPressGestureRecognizer ) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewControllerWithIdentifier("redVC") as! RedViewController
    self.presentViewController(vc, animated: true, completion: nil)
  }
}