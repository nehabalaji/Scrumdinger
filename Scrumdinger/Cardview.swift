//
//  Cardview.swift
//  Scrumdinger
//
//  Created by Neha on 3/7/24.
//

import SwiftUI

struct Cardview: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(/*@START_MENU_TOKEN@*/.isHeader/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendees.count) attendees")
                Spacer()
                Label(
                    title: { Text("\(scrum.lenghtInMinutes)") },
                    icon: { Image(systemName: "clock") }
                )
                .padding(.trailing, 20)
                .accessibilityLabel("\(scrum.lenghtInMinutes) minute meeting")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

#Preview {
    var scrum = DailyScrum.sampleData[0]
    return Cardview(scrum: scrum)
        .background(scrum.theme.mainColor)
        .previewLayout(.fixed(width: 400, height: 60))
}
