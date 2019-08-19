//
//  WelcomeViewController.swift
//  BuggyApp
//
//  Created by Preeyapol Owatsuwan on 19/8/2562 BE.
//  Copyright © 2562 scbeasy. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var mNameText: UILabel!
    var nickname:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mNameText.text = nickname
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Show the navigation bar on other view controllers
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
