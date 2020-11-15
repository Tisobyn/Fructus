//
//  ContentView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 04.11.2020.
//

import SwiftUI

struct ContentView: View {
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
		} // Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
