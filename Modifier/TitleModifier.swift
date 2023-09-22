//
//  TitleModifier.swift
//  StyleRing
//
//  Created by Glenn Ong on 22/9/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

