//
//  FruitRowView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 05.11.2020.
//

import SwiftUI

struct FruitRowView: View {
	var fruit: Fruit
	
    var body: some View {
		HStack {
			Image(fruit.image)
				.renderingMode(.original)
				.resizable()
				.scaledToFit()
				.frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
				.shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
				.background(
					LinearGradient(
						gradient: Gradient(colors: fruit.gradientColors),
						startPoint: .top,
						endPoint: .bottom)
				)
				.cornerRadius(8)
			VStack(alignment: .leading, spacing: 5, content: {
				Text(fruit.title)
					.font(.title2)
					.fontWeight(.bold)
				Text(fruit.headline)
					.font(.caption)
					.foregroundColor(Color.secondary)
			})
		}
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
		FruitRowView(fruit: fruitData[0])
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
