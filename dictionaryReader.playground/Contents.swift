//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// array of dictionary words
var arr = Array<String>()
func appendWords() {
//    let contents = readFile("/Users/Cat/Xcode/LetterPop/LetterPop/words.txt")
    let contents = readFile("Users/Cat/Downloads/english-words-master/words.txt")
    contents?.enumerateLines {
        line, stop in
        if line != "" {
            arr.append(line)
        }
    }
}

// checks if the word is valid or not
func check(str: String) -> Bool {
    return arr.contains(str)
}

// reads a file
func readFile(filePath: String) -> String? {
    do {
        let str = try String(contentsOfFile: filePath)
        return str
    } catch {
        return nil
    }
}

appendWords()
arr
