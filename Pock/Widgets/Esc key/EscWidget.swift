//
//  EscWidget.swift
//  Pock
//
//  Created by Pierluigi Galdi on 21/10/2018.
//  Copyright © 2018 Pierluigi Galdi. All rights reserved.
//

import Foundation

class EscWidgetButton: NSButton {
    override open var intrinsicContentSize: NSSize {
        var size = super.intrinsicContentSize
        size.width = min(size.width, 64)
        return size
    }
}

class EscWidget: PockWidget {
    override func customInit() {
        self.customizationLabel = "Esc Key"
        self.view               = EscWidgetButton(title: "esc", target: self, action: #selector(tap))
    }
    
    @objc private func tap() {
        ESCKeySender().send()
    }
}
