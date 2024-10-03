//
//  String.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/25/24.
//

import Foundation

extension String {


	var removingHTMLOccurances: String {
		return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
	}
}
