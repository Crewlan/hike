//
//  CardView.swift
//  hike
//
//  Created by Rodrigo Silva on 29/09/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle().fill(
                LinearGradient(
                    colors: [
                        Color("ColorIndigoMedium"),
                        Color("ColorSalmonLight")],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)).frame(width: 256, height: 256)
            
            Image("image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
