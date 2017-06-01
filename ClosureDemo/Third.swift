//
//  Third.swift
//  ClosureDemo
//
//  Created by FARHAN IT SOLUTION on 15/04/17.
//
//

import UIKit

class Third: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Third"
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnNextClicked(_ sender: Any) {
        if let def = UserDefaults.standard.string(forKey: "id"){
            print(def)
            let firstVC = storyboard?.instantiateViewController(withIdentifier: "Fourth") as! Fourth
            navigationController?.pushViewController(viewController: firstVC, completion: {
            })
        } else {
            let firstVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            firstVC.onCompletion = { isLogin in
            
                if isLogin {
                    OperationQueue.main.addOperation({ 
                        let vc = self.storyboard?.instantiateViewController(withIdentifier: "Fourth") as! Fourth
                        self.navigationController?.pushViewController(viewController: vc, completion: {
                        })
                    })
                }else{
                    
                }
            
            }
            navigationController?.pushViewController(viewController: firstVC, completion: {
            })
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
    
}
