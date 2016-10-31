//
//  AddStoreViewController.swift
//  GroceryListAppSwift
//
//  Created by New User on 10/26/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

import UIKit

protocol AddStoreViewControllerDelegate: class {
    
    func addStoreViewControllerDelegateDidAddStore(store: Store)
}

class AddStoreViewController: UIViewController {
    
    weak var delegate : AddStoreViewControllerDelegate?


    @IBOutlet weak var storeName : UITextField!
    @IBOutlet weak var storeNumber: UITextField!
    
    @IBAction func Submit() {
        let store = Store()
        store.storeName = storeName.text!
        
        store.storeNumber = Int(storeNumber.text!)!
        
        
        self.delegate?.addStoreViewControllerDelegateDidAddStore(store: store)
        
        self.dismiss(animated: true, completion: nil)
        
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
