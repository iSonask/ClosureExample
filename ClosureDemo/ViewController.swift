//
//  ViewController.swift
//  ClosureDemo
//
//  Created by FARHAN IT SOLUTION on 15/04/17.
//
//

import UIKit

class ViewController: UIViewController {

    var onCompletion: ((_ isLogin: Bool) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnMove(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "First") as! First
        navigationController?.pushViewController(viewController: firstVC, completion: {
        })
    }
    @IBAction func loginClicked(_ sender: Any) {
        
        let udef = UserDefaults.standard
        udef.set("1", forKey: "id")
//        _ = navigationController?.popViewController(animated: true)
        onCompletion?(true)

//        udef.synchronize()
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "First") as! First
        navigationController?.pushViewController(viewController: firstVC, completion: {
        })
    }

}

