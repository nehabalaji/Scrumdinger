//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Neha on 3/7/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self==TrailingIconLabelStyle{
    static var trailingIcon: Self {
        Self()
    }
}
