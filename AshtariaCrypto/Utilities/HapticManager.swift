//
//  HapticManager.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/23/24.
//

import Foundation
import SwiftUI

class HapticManager {

	static private let generator = UINotificationFeedbackGenerator()

	static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
		generator.notificationOccurred(type)
	}
}
