//
//  GreenViewController.swift
//  TuesdayJuly7Take7
//
//  Created by Russell Schmidt on 7/8/15.
//  Copyright (c) 2015 RussellSchmidt.net. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!

  @IBOutlet weak var viewSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  @IBAction func goButton(sender: AnyObject) {

    // if there is text, go to Orange. Else, use switch to go to Red or Blue
    if self.textField.text != "" {
      // 1 - instantiate the storyboard
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      // 2 - instantiate the VC object. NOTE THE DATA TYPE IS THE SPECIFIC SUBCLASS FOR THAT VC DUMMY
      let vc = storyboard.instantiateViewControllerWithIdentifier("orangeVC") as! OrangeViewController
      // 3 - set the VC object property
      vc.output = self.textField.text

      // 4 - engage(word?) the VC
      self.presentViewController(vc, animated: true, completion: nil)
    } else {
      if self.viewSwitch.on {
        // go to red
        self.performSegueWithIdentifier("greenToRedSegue", sender: self)
      } else {
        // go to blue
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("blueVC") as! BlueViewController
        self.presentViewController(vc, animated: true, completion: nil)
      }
    }
  }
}
