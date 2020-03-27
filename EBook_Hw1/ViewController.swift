//
//  ViewController.swift
//  EBook_Hw1
//
//  Created by Joker on 2020/3/24.
//  Copyright © 2020 ntoucs. All rights reserved.
//
import SwiftUI
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBSegueAction func showtheNext(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: ContentView())
    }

    @IBSegueAction func showImage(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: BackGround())
    }
    
    @IBSegueAction func showImage2(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: BackGround2())
    }
   
    @IBSegueAction func showLink(_ coder: NSCoder) -> UIViewController? {
        return UIHostingController(coder: coder, rootView: LinkView())
    }
}



