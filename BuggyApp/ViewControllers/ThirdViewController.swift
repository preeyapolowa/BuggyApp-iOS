//
//  ThirdViewController.swift
//  BuggyApp
//
//  Created by Teerawat Vanasapdamrong on 28/6/19.
//  Copyright © 2019 scbeasy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var mNameText: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()
        self.mNameText.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        textField.resignFirstResponder()
        performAction()
        return true
    }
    
    func performAction(){
        let storyBoard: UIStoryboard = UIStoryboard(name: "Third", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "WelcomePage") as! WelcomeViewController
        vc.nickname = self.mNameText.text
        self.present(vc, animated: true, completion: nil)
    }
}
