//
//  PrimaryItemTabBarItemModelProtocol.swift
//  GoAround
//
//  Created by Gonzalo.Giampietri on 03/11/2023.
//

import Combine
import Foundation

public protocol PrimaryItemTabBarItemModelProtocol {
    var type: PrimaryItemTabBarItemType { get }
    var tabPosition: Int { get }
    var didSelectPublisher: PassthroughSubject<Void, Never> { get }
}
