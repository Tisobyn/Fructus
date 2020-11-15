//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 11.11.2020.
//

import SwiftUI

struct FruitDetailView: View {
	var fruit: Fruit
    var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: true) {
				VStack(alignment: .center, spacing: 20) {
				//Header
					FruitHeaderView(fruit: fruit)
					VStack(alignment: .leading, spacing: 20) {
						//Title
						Text(fruit.title)
							.font(.largeTitle)
							.fontWeight(.heavy)
							.foregroundColor(fruit.gradientColors[1])
						//HeadLine
						Text(fruit.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
						//Nutrience
						FruitNutrientsView(fruit: fruit)
						//SubHeadline
						Text("Learn more about \(fruit.title)".uppercased())
							.fontWeight(.bold)
							.foregroundColor(fruit.gradientColors[1])
						//Description
						Text(fruit.description)
							.multilineTextAlignment(.leading)
						//Link
						SourseLinkView()
							.padding(.top, 10)
							.padding(.bottom, 20)
					}
					.padding(.horizontal,20)
					.frame(maxWidth: 640, alignment: .center )
					
				}//Vstack
				.navigationBarTitle(fruit.title, displayMode: .inline)
				.navigationBarHidden(true)
			}//Scroll
			.edgesIgnoringSafeArea(.top)
		} // Navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
		FruitDetailView(fruit: fruitData[0])
    }
}
