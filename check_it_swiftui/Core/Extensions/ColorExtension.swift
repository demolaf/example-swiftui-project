//
//  UIColor+Extensions.swift
//  check_it
//
//  Created by Ademola Fadumo on 02/01/2024.
//

import UIKit
import SwiftUI

/// ColorExtension
extension Color {
    func light() -> Color {
        var environment = EnvironmentValues()
        environment.colorScheme = .light
        return Color(cgColor: self.resolve(in: environment).cgColor)
    }

    func dark() -> Color {
        var environment = EnvironmentValues()
        environment.colorScheme = .dark
        return Color(cgColor: self.resolve(in: environment).cgColor)
    }

    func flipped() -> Color {
        let environment = EnvironmentValues()
        if environment.colorScheme == .dark {
            return self.light()
        }
        return self.dark()
    }

    static func random() -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}

extension UIColor {
    func light() -> UIColor {
        return self.resolvedColor(with: UITraitCollection(userInterfaceStyle: .light))
    }

    func dark() -> UIColor {
        return self.resolvedColor(with: UITraitCollection(userInterfaceStyle: .dark))
    }

    func flipped() -> UIColor {
        return UIColor.init { (trait) -> UIColor in
            if trait.userInterfaceStyle == .dark {
                return self.light()
            }
            return self.dark()
        }
    }
}
