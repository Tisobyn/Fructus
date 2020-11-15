//
//  FructusApp.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 04.11.2020.
//

import SwiftUI

@main
struct FructusApp: App {
	@AppStorage("isOnboarding") var isOnboarding: Bool = true
	
    var body: some Scene {
        WindowGroup {
			if isOnboarding {
				OnboardingView()
			} else {
				ContentView()
			}
        }
    }
}
