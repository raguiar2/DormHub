//
//  daha_wa_post.swift
//  DormHub
//
//  Created by Rui Aguiar on 2/17/17.
//  Copyright © 2017 vegans. All rights reserved.
//

import UIKit

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
        let task = DAHAPost(context: context) // Link Task & Context
        task.name = postText.text!
        do { try context.save()} catch{}
        
        // Save the data to coredata
        
    let _ = navigationController?.popViewController(animated: true)
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


