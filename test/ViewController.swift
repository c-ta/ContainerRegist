//
//  ViewController.swift
//  test
//
//  Created by Chotaro Iwasaki on 2017/04/13.
//  Copyright © 2017年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var sample: SampleProtocol?
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func taro(_ sender: UIButton) {
        TestContainer.sharedContainer.register(SampleProtocol.self) {_
            in Taro()
        }
    }
    
    @IBAction func jiro(_ sender: UIButton) {
        TestContainer.sharedContainer.register(SampleProtocol.self) {_
            in Jiro()
        }
    }
    
    @IBAction func saburo(_ sender: UIButton) {
        TestContainer.sharedContainer.register(SampleProtocol.self) {_
            in Sabro()
        }
    }
    
    @IBAction func whatsYourName(_ sender: UIButton) {
        sample = TestContainer.sharedContainer.resolve(SampleProtocol.self)!
        label.text! = (sample?.sampleFunction())!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

