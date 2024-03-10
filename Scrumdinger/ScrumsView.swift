//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Neha on 3/10/24.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    
    var body: some View {
        List(scrums) { scrum in
            Cardview(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
        }
    }
}

#Preview {
    ScrumsView(
        scrums: DailyScrum.sampleData
    )
}
