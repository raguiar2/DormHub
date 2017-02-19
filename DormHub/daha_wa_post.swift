//
//  daha_wa_post.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn
import FirebaseAuth

class daha_wa_post: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var postText: UITextField!
    
    
    @IBAction func daha_wa_post(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        // Save the data to coredata- username, email, id, etc.
        let task = DAHAPost(context: context) // Link Task & Context
        
        task.name = postText.text!
        // The user's ID, unique to the Firebase project.
        // Do NOT use this value to authenticate with your backend server,
        // if you have one. Use getTokenWithCompletion:completion: instead.
        let user = FIRAuth.auth()?.currentUser

        let email = user?.email
        let uid = user?.uid
        task.email = email;
        task.userid=uid;
        
        do { try context.save()} catch{}
        
        

        
        
        
        
        //goes back to post
        performSegue(withIdentifier: "post_to_table", sender: self)
        
        

    }
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


