//
//  ScreenSize.swift
//  Animations
//
//  Created by Artur Sakhno on 13/08/2022.
//

#if os(iOS)
import UIKit
#endif
import Foundation
#if os(macOS)
import AppKit
#endif


struct ScreenSize {
    static var width: CGFloat {
        size?.width ?? .zero
    }
    static var height: CGFloat {
        size?.height ?? .zero
    }
    
    #if os(iOS)
    static let size: CGSize? = UIScreen.main.bounds.size
    #endif
    
    #if os(macOS)
    static let size = NSScreen.main?.frame.size
    #endif
    
}
