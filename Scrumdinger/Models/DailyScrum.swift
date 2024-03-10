//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Neha on 3/7/24.
//

import Foundation

struct DailyScrum: Identifiable{
    let id: UUID
    var title: String
    var attendees: [String]
    var lenghtInMinutes: Int
    var theme: Theme
    
    init(id:UUID = UUID(), title: String, attendees: [String], lenghtInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lenghtInMinutes = lenghtInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title:  "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lenghtInMinutes:10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lenghtInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lenghtInMinutes: 5, theme: .poppy)
    ]
}
