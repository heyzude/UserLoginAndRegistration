//
//  RegisterPageViewController.swift
//  UserLoginAndRegistration
//
//  Created by Hey Jude on 2015. 7. 15..
//  Copyright (c) 2015년 Hey Jude. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func displayMyAlertMessage(userMessage: String)
    {
        var myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil)
        
        myAlert.addAction(okAction)
        
        self.presentViewController(myAlert, animated:true, completion:nil)
    }


    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = repeatPasswordTextField.text
        
        //Check for empty fields
        
        if(userPassword != userRepeatPassword)
        {
            displayMyAlertMessage("Passwords do not match")
            return
        }
        
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userEmail")
        NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey: "userPassword")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        
        var myAlert = UIAlertController(title: "Alert", message: "Registration is successful. Thank You!", preferredStyle: UIAlertControllerStyle.Alert)

        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
            {
                action in self.dismissViewControllerAnimated(true, completion: nil)
            }
        
        myAlert.addAction(okAction)
        self.presentViewController(myAlert, animated: true, completion: nil)
  
        /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
    
}
