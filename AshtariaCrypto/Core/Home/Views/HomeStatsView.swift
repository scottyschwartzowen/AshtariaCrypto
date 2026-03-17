//
//  HomeStatsView.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/19/24.
//

import SwiftUI

struct HomeStatsView: View {

	@EnvironmentObject private var vm: HomeViewModel

	@Binding var showPortfolio: Bool

	var body: some View {
		HStack {
			ForEach(vm.statistics) { stat in
				StatisticView(stat: stat)
					.frame(width: UIApplication.shared.currentScreen.bounds.width / 3)
			}
		}
		.frame(width: UIApplication.shared.currentScreen.bounds.width,
					 alignment: showPortfolio ? .trailing : .leading
		)
	}
}

struct HomeStatsView_Previews: PreviewProvider {
	static var previews: some View {
		HomeStatsView(showPortfolio: .constant(false))
			.environmentObject(dev.homeVM)
	}
}
