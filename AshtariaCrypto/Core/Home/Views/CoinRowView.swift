//
//  CoinRowView.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/16/24.
//

import SwiftUI

struct CoinRowView: View {

	let coin: CoinModel
	let showHoldingsColumn: Bool

    var body: some View {
			HStack(spacing: 0) {
				leftColumm
				Spacer()
				if showHoldingsColumn {
					centerColumn
				}
				rightColumn
			}
			.font(.subheadline)
			.background(
				Color.theme.background.opacity(0.001))
		}
}

struct CoinRowView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			CoinRowView(coin: dev.coin, showHoldingsColumn: true)
				.previewLayout(.sizeThatFits)
			CoinRowView(coin: dev.coin, showHoldingsColumn: true)
				.previewLayout(.sizeThatFits)
				.preferredColorScheme(.dark)
		}
	}
}

extension CoinRowView {

	private var leftColumm: some View {
		HStack(spacing: 0) {
			Text("\(coin.rank)")
				.font(.caption)
				.foregroundStyle(Color.theme.secondaryText)
				.frame(minWidth: 30)
			CoinImageView(coin: coin)
				.frame(width: 30, height: 30)
			Text("\(coin.symbol.uppercased())")
				.font(.headline)
				.padding(.leading, 6)
				.foregroundStyle(Color.theme.accent)
		}
	}

	private var centerColumn: some View {
		VStack(alignment: .trailing) {
			Text(coin.currentHoldingsValue.asCurrencyWith2Decimals())
				.bold()
			Text((coin.currentHoldings ?? 0).asNumberString())
		}
		.foregroundStyle(Color.theme.accent)
	}

	private var rightColumn: some View {
		VStack(alignment: .trailing) {
			Text(coin.currentPrice.asCurrencyWith6Decimals())
				.bold()
				.foregroundStyle(Color.theme.accent)
			Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
				.foregroundStyle(
					(coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.vert : Color.theme.rouge
				)
		}
		.frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
	}
}
