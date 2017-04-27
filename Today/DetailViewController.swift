//
//  DetailViewController.swift
//  Today
//
//  Created by Brian McMinn on 4/26/17.
//  Copyright © 2017 Brian McMinn. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var labelView: UIView!
    @IBOutlet var taskfield: UITextField!
    @IBOutlet weak var editView: UIView!
    @IBOutlet var timefield: UITextField!
    var todo: Todo?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.taskfield.delegate = self
        self.timefield.delegate = self
        
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
    
      func toggleViews() {
        editView.isHidden = !editView.isHidden
        labelView.isHidden = !labelView.isHidden
      }
    // MARK: - Navigation

    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */
    

}
