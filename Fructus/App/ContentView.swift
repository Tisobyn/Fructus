//
//  ContentView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 04.11.2020.
//

import SwiftUI

struct ContentView: View {
	@State private var isShowingSettings: Bool = false

	var fruits: [Fruit] = fruitData
	
    var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) { item in
					NavigationLink(destination: FruitDetailView(fruit: item))
						{
							FruitRowView(fruit: item)
						}
				}
				.padding(.vertical, 4)
			}
			.navigationTitle("Fruits  ")
			.navigationBarItems(
				trailing:
					Button(action: {
						isShowingSettings = true
					}, label: {
						Image(systemName: "slider.horizontal.3")
					})
					.sheet(isPresented: $isShowingSettings) {
						SettingsView()
					}
			)
		} // Navigation
		.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
