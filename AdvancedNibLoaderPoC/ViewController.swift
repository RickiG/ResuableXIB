//
//  ViewController.swift
//  AdvancedNibLoaderPoC
//
//  Created by Ricki Gregersen on 16/06/15.
//  Copyright (c) 2015 youandthegang.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nibblableView: NibbableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        nibblableView.titleLabel.text = "Hello"
    }


}

