//
//  OnboardingView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 04.11.2020.
//

import SwiftUI

struct OnboardingView: View {
	
	var fruits: [Fruit] = fruitData
	
    var body: some View {
		TabView {
			ForEach(fruits[0...5]) { item in
				FruitCardView(fruit: item)
			}
		}
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
    }
}
