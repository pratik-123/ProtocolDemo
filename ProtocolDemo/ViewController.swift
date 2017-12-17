//
//  ViewController.swift
//  ProtocolDemo
//
//  Created by Pratik Lad on 17/12/17.
//  Copyright © 2017 Pratik Lad. All rights reserved.
//

import UIKit

class ViewController: UIViewController,FirstProtocolMethod {

    @IBOutlet weak var labelProtocolData: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonHandlerNext(_ sender: Any) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: String(describing : SecondViewController.self)) as! SecondViewController
       //for this error you can inherite protocol hear
        nextVC.delegate = self
        self.navigationController?.pushViewController(nextVC, animated: true)
        
    }

    func protocolMethod(withMessage message:String?)  {
        //This is protocol method 
        //now we can create protocol 
        labelProtocolData.text = message ?? "no data found"

    }
}



