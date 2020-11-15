//
//  SourseLinkView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 11.11.2020.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
		GroupBox() {
			HStack{
				Text("Content source")
				Spacer()
				Link("Wikipedia", destination: URL(string: "https:wikipedia.com")!)
				Image(systemName: "arrow.up.right.square")
			}
			.font(.footnote)
		}
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
