//
//  Second.swift
//  ClosureDemo
//
//  Created by FARHAN IT SOLUTION on 15/04/17.
//
//

import UIKit

class Second: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
title = "second"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnNextClicked(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "Third") as! Third
        navigationController?.pushViewController(viewController: firstVC, completion: {
        })

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
