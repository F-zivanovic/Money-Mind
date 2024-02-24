//
//  ButtonsExtension.swift
//  MoneyMind
//
//  Created by Nikola Kostic on 22.2.24..
//

import SwiftUI
enum ButtonStateStyle {
    case defaultState
    case clickedState
    case disabledState

    /// Determines if the button should be disabled.
    func isDisabled() -> Bool {
        switch self {
        case .disabledState:
            return true
        default:
            return false
        }
    }
}
enum ButtonSizeStyle {
    case small, medium, big

    /// Returns the width of the button based on the style.
    func width() -> CGFloat? {
        switch self {
        case .small:
            return 125
        case .medium:
            return 300
        case .big:
            return nil // Ovde koristimo nil da indikujemo maksimalnu moguću širinu
        }
    }

    /// Returns the dynamic height for the button.
    /// Ovde možete postaviti fiksnu visinu ili omogućiti SwiftUI-u da automatski odredi visinu na osnovu sadržaja.
    static var height: CGFloat = 44
}

/// Extension to provide a standardized style for Button elements.
enum ButtonColorStyle {
    case blue, pink, orange
    
    /// Set foreground color based on the style.
    func foregroundColor() -> Color {
        switch self {
        case .blue, .pink, .orange:
            return .white // Sve varijante koriste belu boju za tekst
        }
    }
    
    /// Set background color based on the button state and style.
    func backgroundColor(for state: ButtonStateStyle) -> Color {
        switch state {
        case .defaultState:
            switch self {
            case .blue:
                return Color.themeBlue
            case .pink:
                return Color.themePink
            case .orange:
                return Color.themeOrange
            }
        case .clickedState, .disabledState:
            switch self {
            case .blue:
                return Color.themeBlue.opacity(0.8)
            case .pink:
                return Color.themePink.opacity(0.8)
            case .orange:
                return Color.themeOrange.opacity(0.8)
            }
        }
    }
}

extension Button {
    func styled(as colorStyle: ButtonColorStyle, size: ButtonSizeStyle, state: ButtonStateStyle) -> some View {
        self
            .frame(width: size.width() ?? .infinity, height: ButtonSizeStyle.height)
            .background(colorStyle.backgroundColor(for: state))
            .foregroundColor(colorStyle.foregroundColor())
            .cornerRadius(4)
            .disabled(state.isDisabled())
    }
}
