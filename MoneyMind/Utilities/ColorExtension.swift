//
//  ColorExtension.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI

/// Extension that adds custom colors and enables initializing colors using hexadecimal values.
extension Color {
    
    /// Custom blue color for the app theme.
    static let themeBlue = Color(hex: "#01042D")
    
    /// Custom pink color for the app theme.
    static let themePink = Color(hex: "#FF0FB3")
    
    /// Custom orange color for the app theme.
    static let themeOrange = Color(hex: "#F6A12E")
    
    /**
     Creates a color instance using a hexadecimal string.
     
     - Parameter hex: The hexadecimal string representing the color. Can be in 3, 6, or 8 character formats.
     
     - Returns: A `Color` instance corresponding to the provided hexadecimal string.
     */
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(.sRGB, red: Double(r) / 255, green: Double(g) / 255, blue:  Double(b) / 255, opacity: Double(a) / 255)
    }
}

