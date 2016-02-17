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
    @IBOutlet var returnKeyboardButton: UIButton!
    @IBOutlet var deleteKeyboardButton: UIButton!
    @IBOutlet var yesKeyboardButton: UIButton!
    @IBOutlet var maybeKeyboardButton: UIButton!
    @IBOutlet var noKeyboardButton: UIButton!
    @IBOutlet var smileyKeyboardButton: UIButton!
    @IBOutlet var seriousKeyboardButton: UIButton!
    @IBOutlet var sadKeyboardButton: UIButton!
    @IBOutlet var tickKeyboardButton: UIButton!
    @IBOutlet var warnKeyboardButton: UIButton!
    @IBOutlet var crossKeyboardButton: UIButton!
    @IBOutlet var thumbsUpKeyboardButton: UIButton!
    @IBOutlet var handKeyboardButton: UIButton!
    @IBOutlet var thumbsDownKeyboardButton: UIButton!
    @IBOutlet var trafficLightKeyboardButton: UIButton!
    
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
    
    func skipLine() {
        self.textDocumentProxy.insertText("\n")
    }
    
    func deleteChar() {
        self.textDocumentProxy.deleteBackward()
    }
    
    func keyPressed(sender: AnyObject?) {
        let btn = sender as! UIButton
        let name = btn.titleForState(.Normal)
        (textDocumentProxy as UIKeyInput).insertText(name!)
    }
    
    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        returnKeyboardButton.addTarget(self, action: "skipLine", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action: "deleteChar", forControlEvents: .TouchUpInside)
        yesKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        maybeKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        noKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        smileyKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        seriousKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        sadKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        tickKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        warnKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        crossKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        thumbsUpKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        handKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        thumbsDownKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        trafficLightKeyboardButton.addTarget(self, action: "keyPressed:", forControlEvents: .TouchUpInside)
        
    }


}
