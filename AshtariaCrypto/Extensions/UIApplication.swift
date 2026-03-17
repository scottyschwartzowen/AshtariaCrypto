//
//  UIApplication.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/18/24.
//

import Foundation
import SwiftUI

extension UIApplication {
	func endEditing () {
		sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}

	// Return the first foreground active UIWindowScene (if any).
	var foregroundWindowScene: UIWindowScene? {
		connectedScenes
			.compactMap { $0 as? UIWindowScene }
			.first(where: { $0.activationState == .foregroundActive })
	}

	// Safe current screen for the foreground active scene. Falls back to main screen if none found.
	var currentScreen: UIScreen {
		// Prefer the screen from the foreground active scene if available
		if let screen = foregroundWindowScene?.screen {
			return screen
		}
		// Fall back to the key window's screen if available
		if let keyWindow = (UIApplication.shared.connectedScenes
			.compactMap { $0 as? UIWindowScene }
			.flatMap({ $0.windows })
			.first(where: { $0.isKeyWindow })) {
			return keyWindow.windowScene?.screen ?? keyWindow.screen
		}
		// Fall back to any window's screen if available
		if let anyWindow = (UIApplication.shared.connectedScenes
			.compactMap { $0 as? UIWindowScene }
			.flatMap({ $0.windows })
			.first) {
			return anyWindow.windowScene?.screen ?? anyWindow.screen
		}
		// As a last resort, return the first connected scene's screen if present
		if let anySceneScreen = UIApplication.shared.connectedScenes
			.compactMap({ $0 as? UIWindowScene })
			.first?.screen {
			return anySceneScreen
		}
		// If no screen can be determined from context, create a detached UIScreen as a non-deprecated placeholder
		// Note: This should be exceedingly rare and indicates there are no active scenes/windows.
		return UIScreen()
	}
}

