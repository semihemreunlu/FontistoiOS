//
//  String+Fontisto.swift
//  FontistoiOS
//
//  Created by Semih Emre ÜNLÜ on 29/10/2017.
//  Copyright © 2017 Semih Emre ÜNLÜ. All rights reserved.
//

import Foundation

public extension String {
    
    public static var fonts = font {
        didSet {
            fontRegExp = createFontRegExp()
        }
    }
    
    fileprivate static var fontRegExp = createFontRegExp()
    
    fileprivate static func createFontRegExp() -> NSRegularExpression {
        return try! NSRegularExpression(pattern: fonts.map { ":\($0.name):" } .joined(separator: "|"), options: [])
    }
    
    public var fontistoIcon: String {
        var s = self as NSString
        let ms = String.fontRegExp.matches(in: self, options: [], range: NSMakeRange(0, s.length))
        ms.reversed().forEach { m in
            let r = m.range
            let p = s.substring(with: r)
            let px = p.substring(with: p.characters.index(after: p.startIndex) ..< p.characters.index(before: p.endIndex))
            let index = String.fonts.index { $0.name == px }
            if let i = index {
                let e = String.fonts[i]
                s = s.replacingCharacters(in: r, with: e.unicode.first!) as NSString
            }
        }
        return s as String
    }
}
