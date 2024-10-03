//
//  XMarkButton.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/20/24.
//

import SwiftUI

struct XMarkButton: View {

	@Environment(\.presentationMode) var presentationMode
	
    var body: some View {
			Button(action: {
				presentationMode.wrappedValue.dismiss()
			}, label: {
				Image(systemName: "xmark")
					.font(.headline)
			})

    }
}

#Preview {
    XMarkButton()
}
