//
//  FlagImage.swift
//  GuessTheFlag
//
//  Created by Мария Газизова on 16.07.2024.
//

import SwiftUI

struct FlagImage: View {
    var countryName: String
    
    var body: some View {
        Image(countryName)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
    
    init(for country: String) {
        self.countryName = country
    }
}

#Preview {
    FlagImage(for: "Estonia")
}
