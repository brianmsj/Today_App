//
//  DetailViewController.swift
//  Today
//
//  Created by Brian McMinn on 4/26/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet var taskfield: UITextField!
    @IBOutlet weak var editView: UIView!
    @IBOutlet var timefield: UITextField!
    var todo: Todo?
    var priority = ["High", "Medium", "Low", "Very Low"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.taskfield.delegate = self
        self.timefield.delegate = self
        pickerView.delegate = self
        pickerView.dataSource = self
        editButton.layer.cornerRadius = 6
        editView.layer.cornerRadius = 6
        labelView.layer.cornerRadius = 6
        prevButton.layer.cornerRadius = 6
        prevButton.layer.borderWidth = 1.0
        editButton.layer.borderWidth = 1.0
        prevButton.layer.borderColor = UIColor(white: 1.0, alpha: 1).cgColor
        editButton.layer.borderColor = UIColor(white: 1.0, alpha: 1).cgColor
        
    
        
        if let todo = self.todo {
            if let task = todo.task {
                self.taskfield.text = task
                self.taskLabel.text = task
            }
            if let time = todo.time {
                self.timefield.text = time
                self.timeLabel.text = time
            }
        }
    }
        // Do any additional setup after loading the view.
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.taskfield {
            self.todo?.task = taskfield.text
        } else if textField == self.timefield {
            self.todo?.time = textField.text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
     
     //MARK: - Actions
     
    */
    
     @IBAction func buttonPush(_ sender: Any) {
        toggleViews()
     }
    
     @IBAction func previousButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = loginVC
    
        
    }
    
      func toggleViews() {
        editView.isHidden = !editView.isHidden
        pickerView.isHidden = !pickerView.isHidden
        labelView.isHidden = !labelView.isHidden
        
      }


    

    // MARK: - Navigation

    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */
    
    //Picker View Controls
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return priority.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return priority[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        priorityLabel.text = priority[row]
        self.todo?.priority = priorityLabel.text
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

}
