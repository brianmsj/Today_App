//
//  LoginViewController.swift
//  Today
//
//  Created by Brian McMinn on 4/27/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBAction func signIn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navBarController = storyboard.instantiateViewController(withIdentifier: "navBarController") as! UINavigationController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = navBarController
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
