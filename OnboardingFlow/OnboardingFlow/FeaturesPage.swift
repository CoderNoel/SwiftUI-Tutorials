//
//  FeaturesPage.swift
//  OnboardingFlow
//
//  Created by Noel Shaju on 28/3/2025.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Features")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
                .foregroundStyle(Color.black)
            
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))
        .foregroundStyle(.white)
}
