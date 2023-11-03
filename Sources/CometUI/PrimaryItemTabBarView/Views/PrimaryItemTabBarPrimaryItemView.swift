//
//  PrimaryItemTabBarPrimaryItemView.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 26/10/2023.
//

import SwiftUI

public struct PrimaryItemTabBarPrimaryItemView: View {
    let model: PrimaryItemTabBarPrimaryItemModel
    
    public var body: some View {
        ZStack {
            LinearGradient(colors: [model.gradientFirstColor, model.gradientLastColor], startPoint: .leading, endPoint: .trailing)
            Text("+")
                .foregroundStyle(.white)
                .font(.system(size: 32, weight: .light))
        }
        .frame(width: 64, height: 64)
        .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 6, y: 6)
    }
}

#Preview {
    PrimaryItemTabBarPrimaryItemView(model: .init(tabPosition: 0,
                                                  gradientFirstColor: .blue,
                                                  gradientLastColor: .white))
}
