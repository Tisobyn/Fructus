//
//  SettingRowView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 15.11.2020.
//

import SwiftUI

struct SettingRowView: View {
	
	var name: String
	var content: String? = nil
	var linkLabel: String? = nil
	var linkDestination: String? = nil
	
    var body: some View {
		VStack {
			Divider().padding(.vertical, 4)
			HStack() {
				Text(name)
					.foregroundColor(.gray)
				Spacer()
				if content != nil {
					Text(content!)
				} else if linkLabel != nil && linkDestination != nil {
					Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
					Image(systemName: "arrow.up.right.square")
						.foregroundColor(.pink)
				}
				else {
					EmptyView()
				}
				
			}
		}
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
		Group {
			SettingRowView(name: "Developer", content: "Yermek Sabyrzhan")
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
			SettingRowView(name: "Website", linkLabel: "SwiftUI", linkDestination: "google.com/swiftui")
				.preferredColorScheme(.dark)
				.previewLayout(.fixed(width: 375, height: 60))
				.padding()
		}
    }
}
