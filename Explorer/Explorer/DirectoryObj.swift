//
//  DirectryObj.swift
//  Explorer
//
//  Created by 寺内 信夫 on 2015/12/16.
//  Copyright © 2015年 寺内 信夫. All rights reserved.
//

import Foundation
import Cocoa

class DirectryObj {
	
	var string_Directory	 = ""
	var string_DirectoryName = ""
	
	func initialize() {
		let fileManager = NSFileManager.defaultManager()
		
		string_Directory	 = fileManager.currentDirectoryPath
		string_DirectoryName = (string_Directory as NSString).lastPathComponent
		
		print("Folder    : \(string_Directory)")
		print("FolderName: \(string_DirectoryName)")
	}
	
	func setBox(box: NSBox!) {
		
		
	}
	
}