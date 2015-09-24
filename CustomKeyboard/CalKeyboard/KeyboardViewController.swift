//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBAction func cool(sender: AnyObject) {
        self.textDocumentProxy.insertText("ヾ(⌐■_■)ノ")
    }
    
    @IBAction func ghost(sender: AnyObject) {
        self.textDocumentProxy.insertText("<(o o)>")
    }
    
    @IBAction func cry(sender: AnyObject) {
        self.textDocumentProxy.insertText("(•̥̥̥̥̥̥̥ ﹏ •̥̥̥̥̥̥̥̥๑)")
    }
    
    @IBAction func hug(sender: AnyObject) {
        self.textDocumentProxy.insertText("(づ｡◕‿‿◕｡)づ")
    }
    
    @IBAction func blank(sender: AnyObject) {
        self.textDocumentProxy.insertText("(‘.’)")
    }
    
    @IBAction func del(sender: AnyObject) {
        self.textDocumentProxy.deleteBackward()
    }

    @IBAction func `return`(sender: AnyObject) {
        self.textDocumentProxy.insertText("\n")
    }
    
    
    
    
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        
    }


}
