//
//  CircleButtonAnimationView.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/15/24.
//

import SwiftUI

struct CircleButtonAnimationView: View {

	@Binding var animate: Bool

	var body: some View {
        Circle()
				.stroke(lineWidth: 5.0)
				.scale(animate ? 1.0 : 0.0)
				.opacity(animate ? 0.0 : 1.0)
				.animation(animate ? Animation.easeOut(duration: 1.0) : .none, value: animate)
    }
}

#Preview {
	CircleButtonAnimationView(animate: .constant(false))
}
