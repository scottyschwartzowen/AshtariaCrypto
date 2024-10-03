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
}
