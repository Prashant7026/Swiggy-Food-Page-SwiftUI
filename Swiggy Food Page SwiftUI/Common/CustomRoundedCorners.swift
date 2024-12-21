//
//  Untitled.swift
//  Swiggy Food Page SwiftUI
//
//  Created by Prashant Kumar Soni on 21/12/24.
//

import SwiftUI

public struct CustomRoundedCorners: Shape {
    public var radius: CGFloat
    public var corners: UIRectCorner

    public init(radius: CGFloat, corners: UIRectCorner) {
        self.radius = radius
        self.corners = corners
    }

    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
