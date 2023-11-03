//
//  PrimaryItemTabBarView.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 24/10/2023.
//

import SwiftUI

public struct PrimaryItemTabBarView: View {
    
    var model: PrimaryItemTabBarModel
    
    public init(model: PrimaryItemTabBarModel) {
        self.model = model
    }
    
    public var body: some View {
        HStack(alignment: .bottom) {
            ForEach(model.items) { itemWrapper in
                Spacer()
                
                if itemWrapper.item.type == .primary, let itemModel = itemWrapper.item as? PrimaryItemTabBarPrimaryItemModel {
                    PrimaryItemTabBarPrimaryItemView(model: itemModel)
                        .onTapGesture { model.selectedTab = itemModel.tabPosition }
                } else if let itemModel = itemWrapper.item as? PrimaryItemTabBarSecondaryItemModel {
                    PrimaryItemTabBarSecondaryItemView(model: itemModel, isActive: itemModel.tabPosition == model.selectedTab)
                        .onTapGesture { model.selectedTab = itemModel.tabPosition }
                }
                
                Spacer()
            }
        }
        .padding(.horizontal, 8)
    }
}
