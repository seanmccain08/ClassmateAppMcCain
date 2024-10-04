//
//  ViewController.swift
//  ClassmateAppMcCain
//
//  Created by SEAN MCCAIN on 10/2/24.
//

import UIKit

class AppData{
    
    static var students : [Student] = []
    
    static var a = Student(name: "Sean", nickname: "Boat Gone Sean", year: "Junior")
    static var b = Student(name: "Ryan", nickname: "Rainbow Ryan", year: "Junior")
    static var c = Student(name: "Logan", nickname: "GoogBall Googan", year: "Junior")
    static var d = Student(name: "Michael", nickname: "Michael Michael Motorcycle", year: "Junior")
    static var e = Student(name: "John", nickname: "Jimmy John", year: "Senior")
    static var f = Student(name: "Cam", nickname: "Chef Cam", year: "Senior")
    static var g = Student(name: "Brennan", nickname: "Breaking Brennan", year: "Sophomore")
    static var h = Student(name: "Daniel", nickname: "Bananiel", year: "Junior")
    static var i = Student(name: "Peter", nickname: "Peter Kickle", year: "Junior")
    static var j = Student(name: "Matthew", nickname: "Glitch Fitch", year: "Junior")
    static var k = Student(name: "Ryan", nickname: "Rat Ryan", year: "Junior")
    static var l = Student(name: "Evan", nickname: "Flutin Evan", year: "Junior")
    static var m = Student(name: "Eva", nickname: "No Pickle Noftz", year: "Senior")
    static var n = Student(name: "Ava", nickname: "ABBA Ava", year: "Senior")
    static var o = Student(name: "Justin", nickname: "Wicked Weber", year: "Senior")
    static var p = Student(name: "Jayden", nickname: "Sleepy Sawyer", year: "Senior")
    
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppData.students.append(AppData.a)
        AppData.students.append(AppData.c)
        AppData.students.append(AppData.d)
        AppData.students.append(AppData.e)
        AppData.students.append(AppData.f)
        AppData.students.append(AppData.g)
        AppData.students.append(AppData.h)
        AppData.students.append(AppData.i)
        AppData.students.append(AppData.j)
        AppData.students.append(AppData.k)
        AppData.students.append(AppData.l)
        AppData.students.append(AppData.m)
        AppData.students.append(AppData.n)
        AppData.students.append(AppData.o)
        AppData.students.append(AppData.p)
        
    }


}

