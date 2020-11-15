//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 11.11.2020.
//

import SwiftUI

struct FruitHeaderView: View {
	var fruit: Fruit
	
	@State private var isAnimationImage: Bool = false
	var body: some View {
		ZStack {
			LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
			Image(fruit.image )
				.resizable()
				.scaledToFit()
				.shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
				.padding(.vertical, 20)
				.scaleEffect(isAnimationImage ? 1.0 : 0.6)
		} // ZStack
		.frame(height: 440)
		.onAppear() {
			withAnimation(.easeOut(duration: 0.5)) {
				isAnimationImage = true
			}
		}
		
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
		FruitHeaderView(fruit: fruitData[0])
			.previewLayout(.fixed(width: 375, height: 440))
    }
}
