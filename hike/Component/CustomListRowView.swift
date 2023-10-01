//
//  CustomListRowVier.swift
//  hike
//
//  Created by Rodrigo Silva on 30/09/23.
//

import SwiftUI

struct CustomListRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var contentSize: Int = 14
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        
        LabeledContent{
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(
                        .primary
                    )
                    .fontWeight(
                        .heavy
                    )
                    .font(.system(size: CGFloat(contentSize)))
            }else if(rowLinkLabel != nil && rowLinkDestination != nil){
                Link(
                    rowLinkLabel!,
                    destination: URL(string: rowLinkDestination!)!)
                .foregroundColor(.pink)
                .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(
                        cornerRadius: 8
                    )
                    .frame(
                        width: 30,
                        height: 30
                    )
                    .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon )
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
            
        }
        
    }
}

#Preview {
    List(
        /*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/
    ) { item in
        CustomListRowView(
            rowLabel: "Designer",
            rowIcon: "paint",
            rowContent: "John Doe",
            rowTintColor: .pink
        )
    }
}
