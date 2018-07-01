//
//  ToggleButton.swift
//  Hansel Profile Page Mockup
//
//  Created by Saachi Kudtarkar on 6/30/18.
//  Copyright © 2018 Saachi Kudtarkar. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {

    var isOn = false
    // Tells the initial state of the button
    
    override init(frame: CGRect){
        super.init(frame:frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    // required initialization overrides

    func initButton(){
        layer.borderWidth = 1.0
        layer.cornerRadius = 2.0
        layer.borderColor = Colors.hanselGreen.cgColor
        // Sets the border's color, radius, and width
        
        setTitleColor(Colors.hanselGreen, for: .normal)
        addTarget(self, action: #selector(ToggleButton.buttonPressed), for: .touchUpInside)
        // Sets the title's color and sets up the space for selection
    }
    
    @objc func buttonPressed(){
        activateButton(bool: !isOn)
        // Sets the status to the opposite of isOn
    }
    
    func activateButton(bool: Bool){
        isOn = bool
        
        let title = bool ? "Unfollow" : "Follow"
        let titleColor = bool ? Colors.hanselGrey : Colors.hanselGreen
        let borderWidthH = bool ? 0.0 : 1.0
        let borderRadius = bool ? 0.0 : 2.0
        // Depending on the status of the button, we have different titles, title colors, border widths, and border radii
        
        layer.borderColor = Colors.hanselGreen.cgColor
        // Border color is always Hansel green

        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        layer.borderWidth = CGFloat(borderWidthH)
        layer.cornerRadius = CGFloat(borderRadius)
        // This sets the title, title color, border width, and corner radius to the values determined above
    }
    
}
