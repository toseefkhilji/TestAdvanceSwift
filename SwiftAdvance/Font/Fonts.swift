//
//  Fonts.swift
//  SwiftAdvance
//
//  Created by Toseefhusen Khilji on 8/21/17.
//  Copyright © 2017 Toseefhusen Khilji. All rights reserved.
//

import Foundation
import UIKit

enum DynamicType : String {
    case Body = "UIFontTextStyleBody"
    case Headline = "UIFontTextStyleHeadline"
    case Subheadline = "UIFontTextStyleSubheadline"
    case Footnote = "UIFontTextStyleFootnote"
    case Caption1 = "UIFontTextStyleCaption1"
    case Caption2 = "UIFontTextStyleCaption2"
}
enum Fonts: String {
    case Regular = "Avenir"
    case HeavyItalic = "AvenirNext-HeavyItalic"
    
    func of(size: CGFloat) -> UIFont {
        return UIFont(name: self.rawValue, size: size)!
    }
    
    func of(style: DynamicType) -> UIFont {
        let preferred = UIFont.preferredFont(forTextStyle: UIFontTextStyle(rawValue: style.rawValue)).pointSize
        return UIFont(name: self.rawValue, size: preferred)!
    }
}
