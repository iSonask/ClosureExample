//
//  First.swift
//  ClosureDemo
//
//  Created by FARHAN IT SOLUTION on 15/04/17.
//
//

import UIKit

class First: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "first"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var btnNext: UIButton!

    @IBAction func nextClicked(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "Second") as! Second
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
