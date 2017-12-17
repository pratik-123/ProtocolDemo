//
//  SecondViewController.swift
//  ProtocolDemo
//
//  Created by Pratik Lad on 17/12/17.
//  Copyright © 2017 Pratik Lad. All rights reserved.
//

import UIKit

protocol FirstProtocolMethod {
    //This is our protocol 
    //hear declare fuction defination
    func protocolMethod(withMessage message:String?)
    
    //Now we can create instance of protocol
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textFieldName: UITextField!

    //Please keep in mind when you communicate with protocol you must pass instance otherwise protocol not work
    var delegate : FirstProtocolMethod?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonHandlerGetData(_ sender: Any) {

        print(textFieldName.text ?? "no data found")
        
        // Now we use Protocol method to pass textfield value in first view controller
        
        //So that first create protocol methods
        
        //now using protocol object pass value into first page 
        delegate?.protocolMethod(withMessage: textFieldName.text)
    
        navigationController?.popViewController(animated: true)
    }

}
