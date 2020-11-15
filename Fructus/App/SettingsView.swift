//
//  SettingsView.swift
//  Fructus
//
//  Created by Yermek Sabyrzhan on 15.11.2020.
//

import SwiftUI

struct SettingsView: View {
	
	@Environment(\.presentationMode) var presentationMode
	@AppStorage("isOnboarding") var isOnboarding: Bool = false
	
    var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(spacing: 20) {
					//MARK: - Section 1
					GroupBox(
						label:
							SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
					) {
						Divider().padding(.vertical, 4) 
						HStack(alignment: .center, spacing: 10) {
							Image("logo")
								.resizable()
								.scaledToFit()
								.frame(width: 80, height: 80)
								.cornerRadius(9)
							
							Text("Most of fruitsare natural low in fat sodium and calories. None have cholesterol. Fruits are sourses of many essential, nutriins, including potssium dietery fiber")
								.font(.footnote)
						}
					}
					//MARK: - Section 2
					
					GroupBox(
						label:
							SettingsLabelView(labelText: "Custominization", labelImage: "paintbrush")
					) {
						Divider().padding(.vertical, 4)
						Text("If you wish, you can restart application by toogle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
							.padding(.vertical, 8)
							.frame(minHeight: 80)
							.layoutPriority(1)
							.font(.footnote)
							.multilineTextAlignment(.leading)
						
						Toggle(isOn: $isOnboarding) {
							if isOnboarding {
								Text("Restarted".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.green)
								
							} else {
								Text("Restart".uppercased())
									.fontWeight(.bold)
									.foregroundColor(.secondary)
							}
						}
						.padding()
						.background(
							Color(UIColor.tertiarySystemBackground)
								.clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
						)
					}
					//MARK: - Section 3
					GroupBox(
						label:
							SettingsLabelView(labelText: "Applications", labelImage: "apps.iphone")
					) {
						SettingRowView(name: "Developer", content: "Yermek Sabyrzhan")
						SettingRowView(name: "Designer", content: "Robert Petras")
						SettingRowView(name: "Compability", content: "iOS 14")
						SettingRowView(name: "Website", linkLabel: "Twitter", linkDestination: "twitter.com/YermekSabyrzhan")
						SettingRowView(name: "SwiftUI", content: "2.0")
						SettingRowView(name: "Version", content: "1.1.0")
					}
					 
				}//: Vstack
				.navigationBarTitle(Text("Settings"), displayMode: .large)
				.navigationBarItems(
					trailing:
						Button(action: {
							presentationMode.wrappedValue.dismiss()
						}) {
							Image(systemName: "xmark")
						}
				)
				.padding()
			}//: scrollView
		}//: navigation
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
