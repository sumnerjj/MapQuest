//
//  CreateQuestViewController.swift
//  MapQuest
//
//  Created by Mushaheed Kapadia on 10/14/17.
//  Copyright © 2017 Mushaheed Kapadia. All rights reserved.
//

import UIKit

class CreateQuestViewController: UIViewController {

    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var titleTextField: UITextField!
    
    var quest: Quest!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        quest = Quest(name: titleTextField.text!, description: descriptionTextField.text!)
        if let destination = segue.destination as? NewClueViewController {
            destination.delegate = self
        }
    }

}

extension CreateQuestViewController: NewClueViewControllerDelegate {
    func addClue(clue: Clue) {
        quest.addClue(clue: clue)
    }
    
    func finished() {
        print("Clues in Quest: ", quest.clues.count)
        navigationController?.popToRootViewController(animated: true)
        /*
        // save quest to network
        quest.save(success: {
            print("Quest saved to network!")
        }) { (error: Error) in
            print(error)
        }
         */
    }
}
