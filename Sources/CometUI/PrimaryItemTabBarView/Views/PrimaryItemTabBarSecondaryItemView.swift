//
//  PrimaryItemTabBarSecondaryItemView.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 26/10/2023.
//

import SwiftUI

public struct PrimaryItemTabBarSecondaryItemView: View {
    let model: PrimaryItemTabBarSecondaryItemModel
    let isActive: Bool
    
    public var body: some View {
        if isActive {
            Image(model.activeIconName).renderingMode(.template).foregroundStyle(model.activeColor)
        } else {
            Image(model.inactiveIconName).renderingMode(.template).foregroundStyle(model.inactiveColor)
        }
    }
}
