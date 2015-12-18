//
//  ViewController.swift
//  Explorer
//
//  Created by 寺内 信夫 on 2015/12/15.
//  Copyright © 2015年 寺内 信夫. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

	var dirObj = DirectryObj()
	
	@IBOutlet weak var box_Directory: NSBox!
	
	override func viewDidLoad() {
		super.viewDidLoad()

		// Do any additional setup after loading the view.
		//dirObj = DirectryObj()
		dirObj.initialize()
		
		box_Directory.title = dirObj.string_Directory
		
		dirObj.setBox(box_Directory)
	}

	override var representedObject: AnyObject? {
		didSet {
		// Update the view, if already loaded.
		}
	}

	@IBAction func folder_Push(sender: AnyObject) {
		print("push")
	}

}

