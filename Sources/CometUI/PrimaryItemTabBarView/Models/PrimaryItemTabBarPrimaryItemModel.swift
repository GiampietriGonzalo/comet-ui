//
//  PrimaryItemTabBarPrimaryItemModel.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 03/11/2023.
//

import SwiftUI
import Combine

public struct PrimaryItemTabBarPrimaryItemModel: PrimaryItemTabBarItemModelProtocol {
    public var type: PrimaryItemTabBarItemType = .primary
    public var tabPosition: Int
    public var didSelectPublisher = PassthroughSubject<Void, Never>()
    let gradientFirstColor, gradientLastColor: Color
    
    public init(type: PrimaryItemTabBarItemType = .primary, tabPosition: Int, didSelectPublisher: PassthroughSubject<Void, Never> = PassthroughSubject<Void, Never>(), gradientFirstColor: Color, gradientLastColor: Color) {
        self.type = type
        self.tabPosition = tabPosition
        self.didSelectPublisher = didSelectPublisher
        self.gradientFirstColor = gradientFirstColor
        self.gradientLastColor = gradientLastColor
    }
}
