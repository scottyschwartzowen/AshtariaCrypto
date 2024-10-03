//
//  SettingsView.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/25/24.
//

import SwiftUI

struct SettingsView: View {

	let defaultURL = URL(string: "https://www.google.com")!
	let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
	let coffeeURL = URL(string: "https://www.buymeacoffee.com/nicksarno")!
	let coingeckoURL = URL(string: "https://www.coingecko.com")!
	let personalURL = URL(string: "https://www.ashtariaproductions.com")!

	var body: some View {
		NavigationStack {
			ZStack {
				// background layer
				Color.theme.background
					.ignoresSafeArea()

				// content layer
				List {
					swiftfulThinkingSection
						.listRowBackground(Color.theme.background.opacity(0.5))
					coinGeckoSection
						.listRowBackground(Color.theme.background.opacity(0.5))
					developerSection
						.listRowBackground(Color.theme.background.opacity(0.5))
					applicationSection
						.listRowBackground(Color.theme.background.opacity(0.5))
				}
			}
			.font(.headline)
			.tint(.blue)
			.listStyle(GroupedListStyle())
			.navigationTitle("Settings")
			.toolbar {
				ToolbarItem(placement: .topBarLeading) {
					XMarkButton()
				}
			}
		}
	}
}

#Preview {
    SettingsView()
}

extension SettingsView {
	private var swiftfulThinkingSection: some View {
		Section(header: Text("Swiftful Thinking")) {
			VStack(alignment: .leading) {
				Image("nicksarno")
					.resizable()
					.frame(width: 100, height: 100)
					.clipShape(RoundedRectangle(cornerRadius: 20))
				Text("This app was made by following an @SwiftfulThinking course on YouTube. It uses MVVM Architecture, Combine, and CoreData.")
					.font(.callout)
					.fontWeight(.medium)
					.foregroundStyle(Color.theme.accent)
			}
			.padding(.vertical, 0)
			Link("Subscribe on YouTube 🥳", destination: youtubeURL)
			Link("Support Nick's coffee addiction ☕️", destination: coffeeURL)
		}
	}

	private var coinGeckoSection: some View {
		Section(header: Text("CoinGecko")) {
			VStack(alignment: .leading) {
				Image("coingecko")
					.resizable()
					.scaledToFit()
					.frame(height: 100)
					.clipShape(RoundedRectangle(cornerRadius: 20))
				Text("The cryptocurrency API data that is used in this app is provided by CoinGecko! Price updates may be slightly delayed.")
					.font(.callout)
					.fontWeight(.medium)
					.foregroundStyle(Color.theme.accent)
			}
			.padding(.vertical, 0)
			Link("Visit CoinGecko 🦎", destination: coingeckoURL)
		}
	}

	private var developerSection: some View {
		Section(header: Text("Developer")) {
			VStack(alignment: .leading) {
				Image("ashtariaproductions")
					.resizable()
					.frame(width: 100, height: 100)
					.clipShape(RoundedRectangle(cornerRadius: 20))
				Text("This app was developed by Scott Schwartz-Owen. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
					.font(.callout)
					.fontWeight(.medium)
					.foregroundStyle(Color.theme.accent)
			}
			.padding(.vertical, 0)
			Link("Visit Website 🌐", destination: personalURL)
		}
	}

	private var applicationSection: some View {
		Section(header: Text("Application")) {
			VStack(alignment: .leading) {
				Image("logo")
					.resizable()
					.frame(width: 100, height: 100)
					.clipShape(RoundedRectangle(cornerRadius: 20))
					.font(.callout)
					.fontWeight(.medium)
					.foregroundStyle(Color.theme.accent)
			}
			.padding(.vertical, 0)
			Link("Terms of Service", destination: defaultURL)
			Link("Privacy Policy", destination: defaultURL)
			Link("Company Website", destination: personalURL)
			Link("Learn More", destination: defaultURL)
		}
	}
}
