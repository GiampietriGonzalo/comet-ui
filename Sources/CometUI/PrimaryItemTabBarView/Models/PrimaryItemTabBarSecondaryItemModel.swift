//
//  PrimaryItemTabBarSecondaryItemViewModel.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 03/11/2023.
//

import SwiftUI
import Combine

public struct PrimaryItemTabBarSecondaryItemModel: PrimaryItemTabBarItemModelProtocol {
    public var type: PrimaryItemTabBarItemType = .secondary
    public var didSelectPublisher = PassthroughSubject<Void, Never>()
    public var tabPosition: Int
    
    let activeIconName: String, inactiveIconName: String
    var activeColor: Color = .blue
    var inactiveColor: Color = .black
    
    public init(type: PrimaryItemTabBarItemType = .secondary, didSelectPublisher: PassthroughSubject<Void, Never> = PassthroughSubject<Void, Never>(), tabPosition: Int, activeIconName: String, inactiveIconName: String, activeColor: Color, inactiveColor: Color) {
        self.type = type
        self.didSelectPublisher = didSelectPublisher
        self.tabPosition = tabPosition
        self.activeIconName = activeIconName
        self.inactiveIconName = inactiveIconName
        self.activeColor = activeColor
        self.inactiveColor = inactiveColor
    }
}
