//
//  SettingsView.swift
//  hike
//
//  Created by Rodrigo Silva on 30/09/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List{
            Section{
                HStack{
                    Spacer()
                    Image(
                        systemName: "laurel.leading"
                    ).font(
                        .system(
                            size: 80,
                            weight: .black
                        )
                    )
                    VStack (spacing: -10) {
                        Text(
                            "Hike"
                        ).font(
                            .system(
                                size: 66,
                                weight: .black
                            )
                        )
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(
                        systemName: "laurel.trailing"
                    ).font(
                        .system(
                            size: 80,
                            weight: .black
                        )
                    )
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(
                    .top,8
                )
                VStack(spacing: 8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is event better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("ABOUT THE APP"),
                    footer: HStack{
                Spacer()
                Text("Copyright © All right reserved.")
                Spacer()
            }
                .padding(.vertical, 8)
            ) {
                //LabeledContent("Application", value: "Hike")
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "HIKE",
                    rowTintColor: .blue
                )
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS,iPadOS",
                    rowTintColor: .red
                )
                
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTintColor: .orange
                )
                
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTintColor: .purple
                )
                
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Rodrigo Silva",
                    rowTintColor: .mint
                )
                
                CustomListRowView(
                    rowLabel: "Deisgner",
                    rowIcon: "paintpalette",
                    rowContent: "Rodrigo Silva",
                    rowTintColor: .pink
                )
                
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTintColor: .indigo,
                    contentSize: 12,
                    rowLinkLabel: "Rodrigo Folio",
                    rowLinkDestination: "https://rodrigosilvafolio.com"
                )
            }
        }
        
    }
}

#Preview {
    SettingsView()
}
