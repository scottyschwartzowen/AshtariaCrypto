//
//  AshtariaCrytpoApp.swift
//  AshtariaCrypto
//
//  Created by Scotty Schwartz-Owen on 9/15/24.
//

import SwiftUI

@main
struct AshtariaCrytpoApp: App {

	@StateObject private var vm = HomeViewModel()
	@State private var showLaunchView: Bool = true

	init() {
		UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
		UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
		UINavigationBar.appearance().tintColor = UIColor(Color.theme.accent)
		UITableView.appearance().backgroundColor = UIColor.clear
	}

	var body: some Scene {
		WindowGroup {
			ZStack {
				NavigationStack {
					HomeView()
						.navigationBarHidden(true)
						.preferredColorScheme(.dark)
				}
				.environmentObject(vm)
				ZStack {
					if showLaunchView {
						LaunchView(showLaunchView: $showLaunchView)
							.transition(.move(edge: .leading))
					}
				}
				.zIndex(2.0)
			}
		}
	}
}
