//
//  Color.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/15/24.
//

import Foundation
import SwiftUI

extension Color {
	static let theme = ColorTheme()
	static let launch = LaunchTheme()
}

struct ColorTheme {
	let accent = Color("AccentColor")
	let background = Color("BackgroundColor")
	let rouge = Color("RougeColor")
	let vert = Color("VertColor")
	let secondaryText = Color("SecondaryTextColor")
}

struct LaunchTheme {
	let accent = Color("LaunchAccentColor")
	let background = Color("LaunchBackgroundColor")
}

struct ColorTheme2 {
	let accent = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
	let background = Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))
	let rouge = Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1))
	let vert = Color(#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1))
	let secondaryText = Color(#colorLiteral(red: 0.7019607843, green: 0.5843137255, blue: 0.4, alpha: 1))
}
