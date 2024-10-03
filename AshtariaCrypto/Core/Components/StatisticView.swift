//
//  StatisticView.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/19/24.
//

import SwiftUI

struct StatisticView: View {

	let stat: StatisticModel
	
    var body: some View {
			VStack(alignment: .leading, spacing: 4) {
				Text(stat.title)
					.font(.caption)
					.foregroundStyle(Color.theme.secondaryText)
				Text(stat.value)
					.font(.headline)
					.foregroundStyle(Color.theme.accent)
				HStack(spacing: 4) {
					Image(systemName: "triangleshape.fill")
						.font(.caption2)
						.rotationEffect(
							Angle(degrees:(stat.percentageChange ?? 0) >= 0 ? 0 : 180))
					Text(stat.percentageChange?.asPercentString() ?? "")
						.font(.caption)
						.bold()
				}
				.foregroundStyle((stat.percentageChange ?? 0) >= 0 ? Color.theme.vert : Color.theme.rouge)
				.opacity(stat.percentageChange == nil ? 0.0 : 1.0)
			}
    }
}

struct StatisticView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			StatisticView(stat: dev.stat1)
				.previewLayout(.sizeThatFits)
			StatisticView(stat: dev.stat2)
				.previewLayout(.sizeThatFits)
			StatisticView(stat: dev.stat3)
				.previewLayout(.sizeThatFits)
		}
	}
}
