//
//  classmateViewController.swift
//  ClassmateAppMcCain
//
//  Created by SEAN MCCAIN on 10/3/24.
//

import UIKit

class classmateViewController: UIViewController {

    var sort = 0
    @IBOutlet weak var sortButtonOutlet: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    var currentIndex = 0
    var currentStudent = AppData.students[0]
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameGo: UIButton!
    @IBOutlet weak var nicknameField: UITextField!
    @IBOutlet weak var nicknameGo: UIButton!
    @IBOutlet weak var yearField: UITextField!
    @IBOutlet weak var yearGo: UIButton!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = currentStudent.name
        nicknameLabel.text = currentStudent.nickname
        yearLabel.text = currentStudent.year
        
    }
    
    @IBAction func previousButton(_ sender: UIButton) {
        
        if currentIndex != 0{
            
            currentIndex-=1
            currentStudent = AppData.students[currentIndex]
            nameLabel.text = currentStudent.name
            nicknameLabel.text = currentStudent.nickname
            yearLabel.text = currentStudent.year
            
        }
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if currentIndex != AppData.students.count-1{
            
            currentIndex+=1
            currentStudent = AppData.students[currentIndex]
            nameLabel.text = currentStudent.name
            nicknameLabel.text = currentStudent.nickname
            yearLabel.text = currentStudent.year
            
        }
        
    }
    
    @IBAction func editButton(_ sender: UIButton) {
        
        if(nameGo.isHidden){
            
            nameLabel.isHidden = true
            nicknameLabel.isHidden = true
            yearLabel.isHidden = true
            yearGo.isHidden = false
            yearField.isHidden = false
            nameGo.isHidden = false
            nameField.isHidden = false
            nicknameGo.isHidden = false
            nicknameField.isHidden = false
            
            previousButton.isUserInteractionEnabled = false
            nextButton.isUserInteractionEnabled = false
            
            nameField.placeholder = AppData.students[currentIndex].name
            nicknameField.placeholder = AppData.students[currentIndex].nickname
            yearField.placeholder = AppData.students[currentIndex].year
            
        }
        else{
            
            if nameField.text != ""{
                
                AppData.students[currentIndex].name = nameField.text!
                    
            }
            nameLabel.text = AppData.students[currentIndex].name
            
            if nicknameField.text != ""{
                
                AppData.students[currentIndex].nickname = nicknameField.text!
                
            }
            nicknameLabel.text = AppData.students[currentIndex].nickname
            
            if yearField.text != ""{
                
                AppData.students[currentIndex].year = yearField.text!
                    
            }
            yearLabel.text = AppData.students[currentIndex].year
            
            nameField.text = ""
            nicknameField.text = ""
            yearField.text = ""
            
            nameLabel.isHidden = false
            nicknameLabel.isHidden = false
            yearLabel.isHidden = false
            yearGo.isHidden = true
            yearField.isHidden = true
            nameGo.isHidden = true
            nameField.isHidden = true
            nicknameGo.isHidden = true
            nicknameField.isHidden = true
            
            previousButton.isUserInteractionEnabled = true
            nextButton.isUserInteractionEnabled = true
            
        }

    }
    
    @IBAction func nameGo(_ sender: Any) {
        
        nameField.resignFirstResponder()
        
    }
    
    @IBAction func nicknameGo(_ sender: Any) {
        
        nicknameField.resignFirstResponder()
        
    }
    
    @IBAction func yearGo(_ sender: Any) {
        
        yearField.resignFirstResponder()
        
    }
    
    @IBAction func sortButton(_ sender: UIButton) {
        
        switch sort{
            
        case 0:
            AppData.students.sort(by: {$0.name < $1.name})
            sortButtonOutlet.setTitle("Name Ascending", for: .normal)
            sort+=1
        case 1:
            AppData.students.sort(by: {$0.name > $1.name})
            sortButtonOutlet.setTitle("Name Descending", for: .normal)
            sort+=1
        case 2:
            AppData.students.sort(by: {$0.nickname < $1.nickname})
            sortButtonOutlet.setTitle("Nickname Ascending", for: .normal)
            sort+=1
        default:
            AppData.students.sort(by: {$0.nickname > $1.nickname})
            sortButtonOutlet.setTitle("Nickname Descending", for: .normal)
            sort=0
        }
        currentIndex = 0
        nameLabel.text = AppData.students[currentIndex].name
        nicknameLabel.text = AppData.students[currentIndex].nickname
        yearLabel.text = AppData.students[currentIndex].year
        
    }
    
}
