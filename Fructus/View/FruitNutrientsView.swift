//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 14.11.2020.
//

import SwiftUI

struct FruitNutrientsView: View {
	var fruit: Fruit
	let nutriens: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamin", "Minerals"]
    var body: some View {
		GroupBox() {
			DisclosureGroup("Nutritional value per 180kg") {
				ForEach(0..<nutriens.count, id: \.self) { item in
					Divider().padding(.vertical, 2)
					HStack {
						Group {
							Image(systemName: "info.circle")
							Text(nutriens[item])
						}
						.foregroundColor(fruit.gradientColors[1])
						.font(Font.system(.body).bold())
						
						Spacer(minLength: 25)
						Text(fruit.nutrition[item])
					}
				}
			}
		}
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
		FruitNutrientsView(fruit: fruitData[0])
			.preferredColorScheme(.dark)
			.previewLayout(.fixed(width: 375, height: 480))
			.padding()
    }
}
