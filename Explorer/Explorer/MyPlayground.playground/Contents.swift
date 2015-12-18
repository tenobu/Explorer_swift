//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
print("aaa = \(str)")

var string_Directory	 = ""
var string_DirectoryName = ""

func initialize() {
	let fileManager = NSFileManager.defaultManager()
	
	string_Directory	 = fileManager.currentDirectoryPath
	string_DirectoryName = (string_Directory as NSString).lastPathComponent
	
	print("Folder    : \(string_Directory)")
	print("FolderName: \(string_DirectoryName)")
}

initialize()