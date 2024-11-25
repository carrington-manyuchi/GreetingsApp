//
//  TitleView.swift
//  GreetingsApp
//
//  Created by Manyuchi, Carrington C on 2024/11/25.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("SwiftUI Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Exploring iOS Programming")
                .font(.headline)
                .fontWeight(.thin)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    TitleView()
}
