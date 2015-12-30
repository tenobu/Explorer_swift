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

	var list_DirectoryName: [String] = []
	var list_FileName     : [String] = []
	
	func initialize() {

		do {
			
			let fileManager = NSFileManager.defaultManager()
		
			string_Directory	 = fileManager.currentDirectoryPath
			string_DirectoryName = (string_Directory as NSString).lastPathComponent
		
			let list = try fileManager.contentsOfDirectoryAtPath(string_Directory)
			for path in list {
				print(path)
				
				let path_path = string_Directory + "/" + path
				var isDir : ObjCBool = false
				fileManager.fileExistsAtPath(path_path, isDirectory: &isDir)
				
				if isDir.boolValue == true {
					list_DirectoryName.append(path)
				} else {
					list_FileName.append(path)
				}
			}
		
			print("Folder    : \(string_Directory)")
			print("FolderName: \(string_DirectoryName)")

			for path in list_DirectoryName {
				print("Path: \(path)")
			}
			for path in list_FileName {
				print("Name: \(path)")
			}
			
		} catch {
			
			print("Error !!")

		}
	
	}
	
}